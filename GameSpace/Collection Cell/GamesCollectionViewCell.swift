//
//  GamesCollectionViewCell.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 10/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class GamesCollectionViewCell: UICollectionViewCell {

    @IBOutlet var gamesLbl: UILabel!
    @IBOutlet var gamesImgView: UIImageView!
    
    static let identifier = "GamesCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "GamesCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    var game: Game! {
           didSet {
               self.updateUI()
           }
       }
    
    public func updateUI(){
        
        if let game = game {
            self.gamesImgView.image = game.gameImg
//            self.gamesImgView.contentMode = .scaleToFill
        }
        
    }

}
