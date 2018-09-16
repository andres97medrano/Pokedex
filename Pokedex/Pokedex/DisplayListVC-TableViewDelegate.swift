//
//  DisplayListVC-TableViewDelegate.swift
//  Pokedex
//
//  Created by Andrés Medrano on 9/15/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

extension DisplayListViewController : UITableViewDelegate, UITableViewDataSource
{
    
    func createResultsList()
    {
        resultsList = UITableView(frame: view.frame)
        resultsList.register(PokemonTableViewCell.self, forCellReuseIdentifier: "TVcell")
        resultsList.delegate = self
        resultsList.dataSource = self
        view.addSubview(resultsList)
    }
    
    // ============================== CONFIGURING THE TABLE VIEW AND CELLS ==============================
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let TVcell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "TVcell")
        TVcell.textLabel?.text = testArray[indexPath.row]
        TVcell.backgroundColor = UIColor.black
        return TVcell
    }
    

    
}

