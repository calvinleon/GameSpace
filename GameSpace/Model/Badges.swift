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
    
    init(achievementName: String, achievementImg: UIImage, achievementJSON: String, enable: Bool) {
        self.achievementName = achievementName
        self.achievementImg = achievementImg
        self.achievementJSON = achievementJSON
        self.enable = enable
    }
    
    static func fetchBadges() -> [Badges]{
        return[
//            Badges(achievementName: "Well Done", achievementImg: UIImage(named: "well-done")!,achievementJSON: "well-done", enable: false),
//            Badges(achievementName: "300 Points", achievementImg: UIImage(named: "300points")!, achievementJSON: "heartbox", enable: false),
//            Badges(achievementName: "1000 Points", achievementImg: UIImage(named: "1000points")!,achievementJSON: "reward",enable: false),
//            Badges(achievementName: "7 Day Streak", achievementImg: UIImage(named: "7day-streak")!, achievementJSON: "7day-streak", enable: false),
            
        ]
        
    }
    
}
