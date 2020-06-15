//
//  BadgeCollectionViewCell.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 12/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class BadgeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var badgeImg: UIImageView!
    var badge: Badges! {
             didSet {
                 self.updateUI()
             }
         }
         
         func updateUI() {
             if let badge = badge {
                badgeImg.image = badge.achievementImg
             } else {
                 print("")
             }
         }
}
