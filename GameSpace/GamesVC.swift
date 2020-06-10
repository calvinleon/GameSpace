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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         
        
        table.register(GamesTableViewCell.nib(), forCellReuseIdentifier: GamesTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
         
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: GamesTableViewCell.identifier, for: indexPath) as! GamesTableViewCell
        cell.selectionStyle = .none
        cell.configure(with: games)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300.0
    }
}

