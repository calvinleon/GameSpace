//
//  ProfileVC.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 10/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    var userName = UserDefaults.standard.string(forKey: "username")

    @IBOutlet weak var userNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLbl.text = userName
    }

}
