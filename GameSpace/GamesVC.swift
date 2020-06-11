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
        self.navigationController?.isNavigationBarHidden = false
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
        } else {
            return games.count
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 180))

        let label = UILabel()
        label.frame = CGRect.init(x: 30, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-130)
        
        if section == 0{
            label.text = "Best of The Week"

        } else {
            label.text =  "All Games"
        }
        label.font = UIFont(name:"Montserrat-Bold", size:16)
        label.textColor = UIColor(red: 0.66, green: 0.66, blue: 0.66, alpha: 1.00)
        headerView.addSubview(label)

        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = table.dequeueReusableCell(withIdentifier: GamesTableViewCell.identifier, for: indexPath) as! GamesTableViewCell
            cell.selectionStyle = .none
            cell.configure(with: games)
            return cell
     
        } else {
//            let cell = table.dequeueReusableCell(withIdentifier: GamesTableViewCell.identifier, for: indexPath) as! GamesTableViewCell
//            cell.selectionStyle = .none
//            cell.configure(with: games)
//            return cell
            
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "AllGamesCell", for: indexPath) as! AllGameTableViewCell
            cell2.selectionStyle = .none
            let game = games[indexPath.row]
        
            
            cell2.allGameImg.image = game.gameImg
            
            return cell2
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 250.0

        } else {
            return 74.0
        }
        
    }
}

