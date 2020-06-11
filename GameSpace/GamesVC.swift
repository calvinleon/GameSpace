//
//  GamesVC.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 10/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class GamesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    
    var games = Game.fetchGame()
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
  //      navigationController?.navigationBar.prefersLargeTitles = true

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(GamesTableViewCell.nib(), forCellReuseIdentifier: GamesTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        table.separatorStyle = UITableViewCell.SeparatorStyle.none

        self.navigationItem.setHidesBackButton(true, animated: true);
         

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        if section == 0 {
            return 1
        }else if section == 1 {
            return 1
        } else {
            return games.count
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 220))

        let label = UILabel()
        label.frame = CGRect.init(x: 30, y: -5, width: headerView.frame.width-10, height: headerView.frame.height-200)
        label.font = UIFont(name:"Montserrat-Bold", size:16)
        label.textColor = UIColor(red: 0.66, green: 0.66, blue: 0.66, alpha: 1.00)
        headerView.addSubview(label)
        
        if section == 0{
            label.font = UIFont(name:"Montserrat-Bold", size:34)
            label.text = "Discover"

        } else if section == 1{
            label.text = "Best of The Week"

        }else {
            label.text =  "All Games"
        }
       
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = table.dequeueReusableCell(withIdentifier: "BlankTableViewCell", for: indexPath)
            cell.selectionStyle = .none
        
            return cell
     
        } else if indexPath.section == 1 {
               let cell = table.dequeueReusableCell(withIdentifier: GamesTableViewCell.identifier, for: indexPath) as! GamesTableViewCell
               cell.selectionStyle = .none
               cell.configure(with: games)
               return cell
        
        }
        else {
//            let cell = table.dequeueReusableCell(withIdentifier: GamesTableViewCell.identifier, for: indexPath) as! GamesTableViewCell
//            cell.selectionStyle = .none
//            cell.configure(with: games)
//            return cell
            
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "AllGamesCell", for: indexPath) as! AllGameTableViewCell
            cell2.selectionStyle = .none
            let game = games[indexPath.row]
        
            
            cell2.allGameImg.image = game.thumbnailImg
            
            return cell2
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100.0

        }else if indexPath.section == 1 {
            return 260.0

        }
        else {
            return 80.0
        }
        
    }
}

