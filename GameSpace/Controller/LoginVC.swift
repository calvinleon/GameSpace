//
//  LoginVC.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 12/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit
import Lottie

class LoginVC: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var nextBtn: UIButton!
    
//    UserDefaults.standard.string(forKey: "username")

    let animationView = AnimationView()
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.attributedPlaceholder = NSAttributedString(string: "Hello, What's Your Name?", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])

        
        bgView.layer.cornerRadius = 10
        nextBtn.layer.cornerRadius = 10
        textField.layer.cornerRadius = 10
    }
    @IBAction func nextAction(_ sender: Any) {
        
        if textField.text?.isEmpty == false{
            userName = textField.text!
            print(userName)
            UserDefaults.standard.set(userName, forKey: "username")

            performSegue(withIdentifier: "toHomeSegue", sender: self)
        }
        
    }
}
