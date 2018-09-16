//
//  PokemonTableViewCell.swift
//  Pokedex
//
//  Created by Andrés Medrano on 9/15/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

class PokemonTableViewCell: UITableViewCell
{

    var pokemonNameLabel : UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
        // Place the label in the table view cell
        
        pokemonNameLabel = UILabel(frame: CGRect(x: 0, y: 2 * contentView.frame.height / 5, width: contentView.frame.width, height: 20))
        pokemonNameLabel.textAlignment = .center
        pokemonNameLabel.font = UIFont.boldSystemFont(ofSize: 12)
        contentView.addSubview(pokemonNameLabel)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
