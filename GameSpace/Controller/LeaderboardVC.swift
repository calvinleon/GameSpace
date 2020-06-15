//
//  LeaderboardVC.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 15/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class LeaderboardVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var table: UITableView!
    
    var users = User.fetchUser()
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
          } else {
              return users.count
          }
      }
      
    func numberOfSections(in tableView: UITableView) -> Int {
          return 2
      }
      
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
          let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))

          let label = UILabel()
          label.frame = CGRect.init(x: 30, y: 35, width: headerView.frame.width-10, height: headerView.frame.height-10)
          label.font = UIFont(name:"Montserrat-Bold", size:16)
          label.textColor = UIColor(red: 0.66, green: 0.66, blue: 0.66, alpha: 1.00)
          headerView.addSubview(label)
          
          if section == 0{
              label.font = UIFont(name:"Montserrat-Bold", size:34)
            label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)

              label.text = "Leaderboard"
          }else {
              label.text =  ""
          }
         
          return headerView
      }
      
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if let destination = segue.destination as? DetailGamesVC {
              
          }
      }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          
          if indexPath.section == 0 {
              let cell = table.dequeueReusableCell(withIdentifier: "BlankTableViewCell", for: indexPath)
              cell.selectionStyle = .none
              
              return cell
       
          }
          else {

              let cell2 = tableView.dequeueReusableCell(withIdentifier: "learderboardCell", for: indexPath)
              cell2.selectionStyle = .none
              let user = users[indexPath.row]
            
            cell2.imageView?.image = user.avatar
            cell2.textLabel?.text = user.fullName
            cell2.detailTextLabel?.text = user.score
              
              return cell2
          }
      }
      
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          if indexPath.section == 2{
              Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false) { (timer) in
                  self.performSegue(withIdentifier: "DetailGameSegue", sender: self)

              }
          }
      }
      
      
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          if indexPath.section == 0 {
              return 50.0
          }else {
              return 80.0
          }
          
      }
}
