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
        
    init(gameName: String, gameDesc: String, gameDifficulty: String, gameLength: String, gameStory: String, gameImg: UIImage)
    {
        self.gameName = gameName
        self.gameDesc = gameDesc
        self.gameImg = gameImg
        self.gameLength = gameLength
        self.gameStory = gameStory
        self.gameDifficulty = gameDifficulty
    }
    
        
        
    static func fetchGame() -> [Game]
    {
        return [
            Game(gameName: "game1", gameDesc: "desc", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "", gameImg: UIImage(named: "game1.png")!),
            Game(gameName: "game2", gameDesc: "desc", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "", gameImg: UIImage(named: "game2.png")!),
            Game(gameName: "game3", gameDesc: "desc", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "", gameImg: UIImage(named: "game3.png")!)
        ]
    }
}
