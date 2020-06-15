//
//  User.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 15/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class User {
var fullName = ""
var score = ""
var avatar:UIImage
    
init(fullName: String, score: String, avatar: UIImage)
{
    self.fullName = fullName
    self.score = score
    self.avatar = avatar
   
}

static func fetchUser() -> [User]
{
    return [
       User(fullName: "Calvin Leonardo", score: "1000 pts", avatar: UIImage(named: "badge1")!),
       User(fullName: "Peter Liuwandy", score: "900 pts", avatar: UIImage(named: "badge1")!),
       User(fullName: "Rais Azka", score: "850 pts", avatar: UIImage(named: "badge1")!),
       User(fullName: "Edwin Santoso", score: "800 pts", avatar: UIImage(named: "badge1")!),
       User(fullName: "Ihza Azra", score: "700 pts", avatar: UIImage(named: "badge1")!),
       User(fullName: "Ady Rahman", score: "680 pts", avatar: UIImage(named: "badge1")!),
       User(fullName: "Kyky Valendra", score: "650 pts", avatar: UIImage(named: "badge1")!),
       User(fullName: "Dicky Salvin", score: "540 pts", avatar: UIImage(named: "badge1")!),
       User(fullName: "Felix Aprilio", score: "500 pts", avatar: UIImage(named: "badge1")!)
        
    ]
}

}
