//
//  AllGameCollectionViewCell.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 11/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class AllGameCollectionViewCell: UICollectionViewCell {
    
    var game : Game? {
    didSet {
        productImage.image = game?.gameImg
    productNameLabel.text = game?.gameName
    productDescriptionLabel.text = game?.gameStory
    }
    }
    
    
    private let productNameLabel : UILabel = {
    let lbl = UILabel()
    lbl.textColor = .black
    lbl.font = UIFont.boldSystemFont(ofSize: 16)
    lbl.textAlignment = .left
    return lbl
    }()
    
    
    private let productDescriptionLabel : UILabel = {
    let lbl = UILabel()
    lbl.textColor = .black
    lbl.font = UIFont.systemFont(ofSize: 16)
    lbl.textAlignment = .left
    lbl.numberOfLines = 0
    return lbl
    }()
    
    private let productImage : UIImageView = {
    let imgView = UIImageView()
    imgView.contentMode = .scaleAspectFit
    imgView.clipsToBounds = true
    return imgView
    }()
}
