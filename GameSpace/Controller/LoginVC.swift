//
//  LoginVC.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 12/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var nextBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.attributedPlaceholder = NSAttributedString(string: "Hello, What's Your Name?", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])

        bgView.layer.cornerRadius = 10
        nextBtn.layer.cornerRadius = 10
        textField.layer.cornerRadius = 10
    }
}
