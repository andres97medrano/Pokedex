//
//  PokeProfileViewController.swift
//  Pokedex
//
//  Created by Andrés Medrano on 9/18/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

class PokeProfileViewController : UIViewController
{
    // VC to display stats of specific character
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // encapsulate in function later
        navigationItem.title = "<Pokemon's Name>"
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 20)]
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        
    }
}
