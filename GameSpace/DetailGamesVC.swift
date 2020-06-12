//
//  DetailGames.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 10/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class DetailGamesVC: UIViewController {

    @IBOutlet weak var gameImgView: UIImageView!
    @IBOutlet weak var gameNameLbl: UILabel!
    @IBOutlet weak var gameDescLbl: UILabel!
    @IBOutlet weak var gameLengthLbl: UILabel!
    @IBOutlet weak var gameDifficultyLbl: UILabel!
    @IBOutlet weak var gameScoreLbl: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    
    var gameImg = UIImage()
    var gameName = ""
    var gameDesc = ""
    var gameLength = ""
    var gameDifficulty = ""
    var gameScore = ""
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playBtn.layer.cornerRadius = 10.0
        
        gameNameLbl.text = gameName
        gameDescLbl.text = gameDesc
        gameImgView.image = gameImg
        gameScoreLbl.text = "Your Highest Score : \(gameScore)"
        gameDifficultyLbl.text = "Play Length : \(gameDifficulty)"
        gameLengthLbl.text =  "Play Length : \(gameLength)"
    }
    

    @IBAction func startGame(_ sender: Any) {
        
    }
    
}

