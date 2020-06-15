//
//  ProfileVC.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 10/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var badgeCollectionView: UICollectionView!

    var userName = UserDefaults.standard.string(forKey: "username")

    var badges = Badges.fetchBadges()
    @IBOutlet weak var userNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLbl.text = userName
    }

}

extension ProfileVC: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return badges.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BadgeCVC", for: indexPath) as! BadgeCollectionViewCell
                   
        let badge = badges[indexPath.item]
        cell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap(_:))))
               
        cell.badge = badge
               
        if badge.enable == false{
            cell.contentView.isHidden = true
        }
        else {
            cell.contentView.isHidden = false
        }
        return cell
    }
    
    
    @objc func tap(_ sender: UITapGestureRecognizer) {

       let location = sender.location(in: self.badgeCollectionView)
       let indexPath = self.badgeCollectionView.indexPathForItem(at: location)

       if let tempIndex = indexPath {
          print("Got clicked on index: \(tempIndex)!")
        let badge = badges[tempIndex.item]
//        animationJSON = achievement.achievementJSON
//        animationName = achievement.achievementName
        }
    }
    
}

