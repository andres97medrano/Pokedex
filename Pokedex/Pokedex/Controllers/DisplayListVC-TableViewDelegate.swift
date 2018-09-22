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
        resultsListTableView = UITableView(frame: CGRect(x: view.frame.width / 12, y: view.frame.height / 5, width: 10 * view.frame.width / 12, height: 4 * view.frame.height / 5))
        resultsListTableView.delegate = self
        resultsListTableView.dataSource = self
        resultsListTableView.register(PokemonTableViewCell.self, forCellReuseIdentifier: "TVcell")
        view.addSubview(resultsListTableView)
    }
    
    func setupNavigationBar()
    {
        navigationItem.title = "Search Results"
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 20)]
        navigationController?.isNavigationBarHidden = true
        
    }
    
    func createSegmentedControl()
    {
//        searchSegmentedControl = UISegmentedControl(frame: CGRect(x: 2 * view.frame.width / 5, y: view.frame.height / 15, width: view.frame.width / 5, height: view.frame.height / 15))
        searchSegmentedControl = UISegmentedControl(frame: CGRect(x: 100, y: 70, width: view.frame.width / 5, height: 20))
        searchSegmentedControl = UISegmentedControl(items: ["List", "Grid"])
        searchSegmentedControl.selectedSegmentIndex = 0     // default index
        searchSegmentedControl.tintColor = UIColor.white
        view.addSubview(searchSegmentedControl)
    }
    
    // ============================== CONFIGURING THE TABLE VIEW AND CELLS ==============================
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let TVcell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "TVcell")
        TVcell.textLabel?.text = testArray[indexPath.row]
        return TVcell
    }
    

    
}

