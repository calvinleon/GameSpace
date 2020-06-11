//
//  AllGameTableViewCell.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 11/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class AllGameTableViewCell: UITableViewCell {

    @IBOutlet weak var allGameImg: UIImageView!
    @IBOutlet weak var allGameLbl: UILabel!
    @IBOutlet weak var allGameStory: UILabel!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            self.selectedBackgroundView = UIView()

        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            if isSelected == true {
                animate()
                Timer.scheduledTimer(withTimeInterval: 0.18, repeats: false) { (timer) in
                    self.isSelected = false
                }
            }
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 8, left: 30, bottom: 8, right: 30))
            contentView.layer.cornerRadius = 10
            
            contentView.backgroundColor = UIColor(red: 0.79, green: 0.40, blue: 0.57, alpha: 1.00)
        }
        
        func animate() {
              UIView.animate(withDuration: 0.1,
            animations: {
              //  self.bgTable.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
            },
                completion: { _ in
            UIView.animate(withDuration: 0.1) {
               // self.bgTable.transform = CGAffineTransform.identity
                }
            })
        }
    
    

}
