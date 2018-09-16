//
//  ViewController.swift
//  Pokedex
//
//  Created by Andrés Medrano on 9/11/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

class MainViewController: UIViewController
{
    // ===================================== USER-INTERFACE =====================================
    // LABELS
    var pokedexTitleLabel : UILabel!
    var pokedexSloganLabel: UILabel!
    var pokemonTypesLabel : UILabel!
    
    // IMAGE
    var pokemonImageView : UIImageView!
    
    // TEXT FIELDS
    var searchBarTextField : UITextField!
    var attackPointsTextField : UITextField!
    var defensePointsTextField : UITextField!
    var healthPointsTextField : UITextField!
    
    // BUTTONS
    var searchButton : UIButton!
    var randomButton : UIButton!
    
    // COLLECTION VIEW(S)
    var pokemonTypesCollectionView : UICollectionView!
    
    var tap: UIGestureRecognizer!
    
    // ==========================================================================================
    
    // =====================================      DATA      =====================================
    // ARRAYS
    var pokeTypes : [String] = ["Bug", "Grass", "Dark", "Ground", "Dragon", "Ice", "Electric", "Normal", "Fairy","Poison", "Fighting", "Psychic", "Fire", "Rock", "Flying", "Steel", "Ghost", "Water"]
    var pokemonCharacters : [Pokemon] = PokemonGenerator.getPokemonArray()
    var pokeTypesSelected : [String] = []
    
    // STRINGS
    var searchEntry : [String]?
    
    // INTEGERS
    var attackPoints : Int = 0
    var defensePoints : Int = 0
    var healthPoints : Int = 0   
    
    // =============================================================================================
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Set-up the Screen
        self.view.backgroundColor = UIColor.blue
        
        //displayTitle()
        displaySlogan()
        displaySearchBar()
        displayAttackPoints()
        displayDefensePoints()
        displayHealthPoints()
        displaySearchButton()
        displayRandomButton()
        displayCategoryScrollView()
        setupNavigationBar()
        displayHeaderImage()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        // We want to clear the screen inputs and vars whenever this screen is loaded
        searchBarTextField.text = ""
        attackPointsTextField.text = ""
        defensePointsTextField.text = ""
        healthPointsTextField.text = ""
        searchEntry = []
        pokeTypesSelected = []
        attackPoints = 0
        defensePoints = 0
        healthPoints = 0
    }
    
    @objc func searchClicked()
    {
        // variables to send data
        performSegue(withIdentifier: "toDisplayList", sender: self)
    }
    
    @objc func randomClicked()
    {
        // variables to send data
        performSegue(withIdentifier: "toPokeProfile", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // data to send 
    }
    

    
}

