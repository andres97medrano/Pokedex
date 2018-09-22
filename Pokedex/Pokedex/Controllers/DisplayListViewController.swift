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
    var resultsListTableView : UITableView!
    
    // COLLECTION VIEW
    var resultsGridCollectionView : UICollectionView!
    
    // SEGMENTED CONTROL
    var searchSegmentedControl : UISegmentedControl!
    
    
    // =====================================      DATA      =====================================
    
    // ARRAYS
    // We need to create an array with all the possible Pokemons searched based on the filters
    var testArray = ["Hello", "Goodbye", "Hola", "Adios"]   // using this array to test the table view cell
    
    // =============================================================================================
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        setupNavigationBar()
        createResultsList()
        createSegmentedControl()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        
    }
    
}
