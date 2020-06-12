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
            Game(gameName: "Space Race", gameDesc: "You're in a rocket headed for the moon, destroy the asteroid as fast as possible before crashing into your rocket!", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "race in space", gameImg: UIImage(named: "game4.png")!,thumbnailImg: UIImage(named: "tgame4.png")!),
            
            Game(gameName: "Space Adventure", gameDesc: "You're in a rocket headed for the moon, destroy the asteroid as fast as possible before crashing into your rocket!", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "destroy the asteroid as fast as possible", gameImg: UIImage(named: "game3.png")!, thumbnailImg: UIImage(named: "tgame3.png")!),
            Game(gameName: "Alien Space", gameDesc: "You're in a rocket headed for the moon, destroy the asteroid as fast as possible before crashing into your rocket!", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "one small step to start your adventure", gameImg: UIImage(named: "game1.png")!,thumbnailImg: UIImage(named: "tgame1.png")!),
            Game(gameName: "Space Race", gameDesc: "You're in a rocket headed for the moon, destroy the asteroid as fast as possible before crashing into your rocket!", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "race in space", gameImg: UIImage(named: "game5.png")!,thumbnailImg: UIImage(named: "tgame5.png")!),
            Game(gameName: "Alien Invasion", gameDesc: "You're in a rocket headed for the moon, destroy the asteroid as fast as possible before crashing into your rocket!", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "aliens invade planet earth, save the earth!", gameImg: UIImage(named: "game6.png")!,thumbnailImg: UIImage(named: "tgame6.png")!),
            Game(gameName: "Outer Space", gameDesc: "You're in a rocket headed for the moon, destroy the asteroid as fast as possible before crashing into your rocket!", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "help astronauts to fix their rockets", gameImg: UIImage(named: "game7.png")!,thumbnailImg: UIImage(named: "tgame7.png")!),
            Game(gameName: "Space Game", gameDesc: "You're in a rocket headed for the moon, destroy the asteroid as fast as possible before crashing into your rocket!", gameDifficulty: "Easy", gameLength: "5 minutes", gameStory: "one small step to start your adventure", gameImg: UIImage(named: "game2.png")!,thumbnailImg: UIImage(named: "tgame2.png")!),
          
        ]
    }
}
