//
//  Games.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 10/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class Game {
    
    var gameName = ""
    var gameDesc = ""
    var gameDifficulty = ""
    var gameLength = ""
    var gameStory = ""
    var gameImg:UIImage
    var thumbnailImg: UIImage
        
    init(gameName: String, gameDesc: String, gameDifficulty: String, gameLength: String, gameStory: String, gameImg: UIImage, thumbnailImg: UIImage)
    {
        self.gameName = gameName
        self.gameDesc = gameDesc
        self.gameImg = gameImg
        self.gameLength = gameLength
        self.gameStory = gameStory
        self.gameDifficulty = gameDifficulty
        self.thumbnailImg = thumbnailImg
    }
    
        
        
    static func fetchGame() -> [Game]
    {
        return [
            Game(gameName: "game3", gameDesc: "desc", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "", gameImg: UIImage(named: "game3.png")!, thumbnailImg: UIImage(named: "tgame3.png")!),
            Game(gameName: "game3", gameDesc: "desc", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "", gameImg: UIImage(named: "game5.png")!,thumbnailImg: UIImage(named: "tgame5.png")!),
            Game(gameName: "game3", gameDesc: "desc", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "", gameImg: UIImage(named: "game6.png")!,thumbnailImg: UIImage(named: "tgame6.png")!),
            Game(gameName: "game3", gameDesc: "desc", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "", gameImg: UIImage(named: "game7.png")!,thumbnailImg: UIImage(named: "tgame7.png")!),
            Game(gameName: "game1", gameDesc: "desc", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "", gameImg: UIImage(named: "game1.png")!,thumbnailImg: UIImage(named: "tgame1.png")!),
            Game(gameName: "game2", gameDesc: "desc", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "", gameImg: UIImage(named: "game2.png")!,thumbnailImg: UIImage(named: "tgame2.png")!),
            Game(gameName: "game3", gameDesc: "desc", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "", gameImg: UIImage(named: "game4.png")!,thumbnailImg: UIImage(named: "tgame3.png")!),
        ]
    }
}
