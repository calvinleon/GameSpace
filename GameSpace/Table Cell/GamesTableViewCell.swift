//
//  GamesTableViewCell.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 10/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class GamesTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    static let identifier = "GamesTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "GamesTableViewCell", bundle: nil)
    }
    
    @IBOutlet var collectionView: UICollectionView!
    
    var games = Game.fetchGame()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionView.register(GamesCollectionViewCell.nib(), forCellWithReuseIdentifier: GamesCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    func configure(with games: [Game]){
        self.games = games
        collectionView.reloadData()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return games.count
    }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GamesCollectionViewCell.identifier, for: indexPath) as! GamesCollectionViewCell
            let game = games[indexPath.item]
            
            cell.game = game
            
            return cell
      
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 250)
        
    }
    
    
    
    
    
}
