//
//  Badges.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 12/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class Badges {
    
    var achievementName = ""
    var achievementImg: UIImage
    var achievementJSON = ""
    var enable = false
    
    init(achievementName: String, achievementImg: UIImage, enable: Bool) {
        self.achievementName = achievementName
        self.achievementImg = achievementImg
        self.enable = enable
    }
    
    static func fetchBadges() -> [Badges]{
        return[
            Badges(achievementName: "Well Done", achievementImg: UIImage(named: "badge1")!, enable: true),
            Badges(achievementName: "300 Points", achievementImg: UIImage(named: "badge2")!, enable: false),
            Badges(achievementName: "1000 Points", achievementImg: UIImage(named: "badge3")!,enable: false),
            Badges(achievementName: "7 Day Streak", achievementImg: UIImage(named: "badge4")!, enable: false),
            Badges(achievementName: "7 Day Streak", achievementImg: UIImage(named: "badge5")!, enable: false),
            Badges(achievementName: "7 Day Streak", achievementImg: UIImage(named: "badge6")!, enable: false),
        ]
        
    }
    
}
