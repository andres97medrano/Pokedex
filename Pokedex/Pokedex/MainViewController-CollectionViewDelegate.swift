//
//  MainViewController-CollectionViewDelegate.swift
//  Pokedex
//
//  Created by Andrés Medrano on 9/14/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

extension MainViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    // =====================================      SET-UP      =====================================
    
//    func displayTitle()
//    {
//        // POKEDEX TITLE
//        pokedexTitleLabel = UILabel(frame: CGRect(x: 0, y: view.frame.height / 10, width: view.frame.width, height: 50))
//        pokedexTitleLabel.textAlignment = .center
//        pokedexTitleLabel.text = "POKEDEX"
//        pokedexTitleLabel.textColor = UIColor.green
//        pokedexTitleLabel.font = pokedexTitleLabel.font.withSize(50)
//        self.view.addSubview(pokedexTitleLabel)
//    }
    
    func displayHeaderImage()
    {
        pokemonImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 175, height: 175))
        pokemonImageView.center = CGPoint(x: view.frame.width / 2, y: 2 * view.frame.height / 10)
        pokemonImageView.image = UIImage(named: "pokemon")
        pokemonImageView.contentMode = .scaleAspectFit
        self.view.addSubview(pokemonImageView)
    }
    
    func displaySlogan()
    {
        // POKEDEX SLOGAN
        pokedexSloganLabel = UILabel(frame: CGRect(x: 0, y: 2.8 * view.frame.height / 10 , width: view.frame.width, height: 50))
        pokedexSloganLabel.textAlignment = .center
        pokedexSloganLabel.text = "You gotta search them all!"
        pokedexSloganLabel.textColor = UIColor.white
        pokedexSloganLabel.font = UIFont.boldSystemFont(ofSize: 16)
        self.view.addSubview(pokedexSloganLabel)
    }
    
    func displaySearchBar()
    {
        // SEARCH BAR
        searchBarTextField = UITextField(frame: CGRect(x: view.frame.width / 8, y: 3.75 * view.frame.height / 10, width: 6 * view.frame.width / 8, height: 40))
        searchBarTextField.placeholder = "Enter a character name or number.. "
        let spacerView1 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        searchBarTextField.leftViewMode = UITextFieldViewMode.always
        searchBarTextField.leftView = spacerView1
        searchBarTextField.backgroundColor = UIColor.white
        view.addSubview(searchBarTextField)
    }
    
    func displayAttackPoints()
    {
        // ATTACK POINTS
        attackPointsTextField = UITextField(frame: CGRect(x: 2 * view.frame.width / 15, y: 6.5 * view.frame.height / 10 , width: view.frame.width / 5, height: 40))
        attackPointsTextField.placeholder = "ATTACK"
        attackPointsTextField.leftViewMode = UITextFieldViewMode.always
        let spacerView2 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        attackPointsTextField.leftView = spacerView2
        attackPointsTextField.backgroundColor = UIColor.white
        self.view.addSubview(attackPointsTextField)
    }

    func displayDefensePoints()
    {
        // DEFENSE POINTS
        defensePointsTextField = UITextField(frame: CGRect(x: 6 * view.frame.width / 15, y: 6.5 * view.frame.height / 10, width: view.frame.width / 5, height: 40))
        defensePointsTextField.placeholder = "DEF"
        defensePointsTextField.leftViewMode = UITextFieldViewMode.always
        let spacerView3 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        defensePointsTextField.leftView = spacerView3
        defensePointsTextField.backgroundColor = UIColor.white
        self.view.addSubview(defensePointsTextField)
    }
    
    func displayHealthPoints()
    {
        // HEALTH POINTS
        healthPointsTextField = UITextField(frame: CGRect(x: 10 * view.frame.width / 15, y: 6.5 * view.frame.height / 10, width: view.frame.width / 5, height: 40))
        healthPointsTextField.placeholder = "HEALTH"
        healthPointsTextField.leftViewMode = UITextFieldViewMode.always
        let spacerView4 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        healthPointsTextField.leftView = spacerView4
        healthPointsTextField.backgroundColor = UIColor.white
        self.view.addSubview(healthPointsTextField)
    }
    
    func displaySearchButton()
    {
        // SEARCH BUTTON
        searchButton = UIButton(frame: CGRect(x: view.frame.width / 4, y: 7.75 * view.frame.height / 10, width: view.frame.width / 2, height: 50))
        searchButton.setTitle("SEARCH", for: .normal)
        searchButton.backgroundColor = .red
        searchButton.addTarget(self, action: #selector(searchClicked), for: .touchUpInside)
        self.view.addSubview(searchButton)
    }
    
    func displayRandomButton()
    {
        // GENERATE RANDOM BUTTON
        randomButton = UIButton(frame: CGRect(x: view.frame.width / 4, y: 8.75 * view.frame.height / 10, width: view.frame.width / 2, height: 50))
        randomButton.setTitle("GENERATE RANDOM", for: .normal)
        randomButton.backgroundColor = .red
        randomButton.addTarget(self, action: #selector(randomClicked), for: .touchUpInside)
        view.addSubview(randomButton)
    }
    
    func displayCategoryScrollView()
    {
        // SETTING THE COLLECTION VIEW ONTO MAIN SCREEN
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 3
        layout.minimumInteritemSpacing = 2
        layout.scrollDirection = .horizontal
        pokemonTypesCollectionView = UICollectionView(frame: CGRect(x: view.frame.width / 8, y:  4.75 * view.frame.height / 10, width: 6 * view.frame.width / 8, height: 80), collectionViewLayout: layout)
        pokemonTypesCollectionView.register(TypeCVCell.self, forCellWithReuseIdentifier: "typeCell")
        pokemonTypesCollectionView.backgroundColor = UIColor.red
        pokemonTypesCollectionView.delegate = self
        pokemonTypesCollectionView.dataSource = self
        view.addSubview(pokemonTypesCollectionView)
    }
    
    func setupNavigationBar()
    {
        navigationItem.title = "Pokedéx"
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 30)]
        
    }
    
    // =======================================================================================================
    
    // ============================== CONFIGURING THE COLLECTION VIEW AND CELLS ==============================
    
    
    // We only want one row so we return 1 section in our collection view
    func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    // We want a cell for each pokemon category which will be 18
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return pokeTypes.count
    }
    
    // We want to reuse the same cells we have already created
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "typeCell", for: indexPath) as! TypeCVCell
        for subview in cell.contentView.subviews
        {
            subview.removeFromSuperview()
        }
        cell.backgroundColor = UIColor.green
        cell.awakeFromNib()
        return cell
    }
    
    // We want to insert a label within the cell 
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
    {
        let typeCell = cell as! TypeCVCell
        typeCell.typeLabel.text = pokeTypes[indexPath.item]
        typeCell.alpha = 1
    }
    
    // Seting the cell size within the collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 100, height: 50)
    }
    
    
    // If we want something to happen when the user taps a cell, then use this method
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {

        let typeCell = collectionView.cellForItem(at: indexPath) as! TypeCVCell
        typeCell.showSelected()
        
        if typeCell.typeWasSelected {
            print(indexPath)
        }

        let category = pokeTypes[indexPath.item]
        
        if typeCell.typeWasSelected {
            pokeTypesSelected.append(category)
        }
        else
        {
            if pokeTypesSelected.count != 0 {
                pokeTypesSelected.remove(at: pokeTypesSelected.index(of: category)!)
            }
        }
    }
    
    
    
    
}
