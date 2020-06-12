//
//  GamesTableViewCell.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 10/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

//protocol GameTableDelegate {
//    func cellPressed(data: Game)
//    func viewAllGame(data: [Game])
//}

class GamesTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    static let identifier = "GamesTableViewCell"
    
//    var delegate: GameTableDelegate?

    static func nib() -> UINib {
        return UINib(nibName: "GamesTableViewCell", bundle: nil)
    }
    
    @IBOutlet var collectionView: UICollectionView!
    
    var didSelectItemAction: ((IndexPath) -> Void)?

    
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
       
//    func theSegue(data: Game) {
//        delegate?.cellPressed(data: data)
//    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GamesCollectionViewCell.identifier, for: indexPath) as! GamesCollectionViewCell
        let game = games[indexPath.item]
            
        cell.contentView.layer.cornerRadius = 10

        cell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap(_:))))
        cell.game = game
        
//        cell.gameCellDelegate = self
            
        return cell
    }
//    @IBAction func viewAllTapped(_ sender: Any) {
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 250)
    }
    
    @objc func tap(_ sender: UITapGestureRecognizer) {

       let location = sender.location(in: self.collectionView)
       let indexPath = self.collectionView.indexPathForItem(at: location)
        
//        delegate?.viewAllGame(data: games)

       if let tempIndex = indexPath {
          print("Got clicked on index: \(tempIndex)!")
            didSelectItemAction?(tempIndex)

       }
    }
}
