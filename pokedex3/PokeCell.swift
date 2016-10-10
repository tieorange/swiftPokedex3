//
//  PokeCell.swift
//  pokedex3
//
//  Created by Andrii Kovalchuk on 06/10/2016.
//  Copyright © 2016 Andrii Kovalchuk. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    
    func configureCell(_ pokemon: Pokemon){
        self.pokemon = pokemon
        
        nameLabel.text = self.pokemon.name
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")

    }
    
}
