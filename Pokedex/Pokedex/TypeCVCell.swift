//
//  TypeCVCell.swift
//  Pokedex
//
//  Created by Andrés Medrano on 9/14/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

class TypeCVCell: UICollectionViewCell
{
    // LABEL
    var typeLabel: UILabel!
    
    // DATA
    var typeWasSelected = false
    
    override func awakeFromNib()
    {
        // Place the label in the cell
        typeLabel = UILabel(frame: CGRect(x: 0, y: 1.75 * contentView.frame.height / 5, width: contentView.frame.width, height: 20))
        typeLabel.textAlignment = .center
        typeLabel.font = UIFont.boldSystemFont(ofSize: 16)
        contentView.addSubview(typeLabel)
    }
    
    func showSelected()
    {
        // We want to show the user that their category that they've chosen has been selected or deselected
        typeWasSelected = !typeWasSelected
        
        if typeWasSelected {
            self.alpha = 0.5
        }
        else {
            self.alpha = 1
        }
    }
    
    
}
