//
//  DisplayListViewController.swift
//  Pokedex
//
//  Created by Andrés Medrano on 9/15/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit


class DisplayListViewController: UIViewController
{
    // ===================================== USER-INTERFACE =====================================
    // TABLE VIEW
    var resultsList : UITableView!
    
    // COLLECTION VIEW
    var resultsGrid : UICollectionView!
    
    // SEGMENTED CONTROL
    var switchViews : UISegmentedControl!
    
    
    // =====================================      DATA      =====================================
    
    // ARRAYS
    // We need to create an array with all the possible Pokemons searched based on the filters
    var testArray = ["Hello", "Goodbye", "Hola", "Adios"]
    
    // =============================================================================================
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        createResultsList()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        
    }
    
}
