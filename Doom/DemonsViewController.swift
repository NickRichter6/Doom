//
//  DemonsViewController.swift
//  Doom
//
//  Created by Nick Ivanov on 29.05.2020.
//  Copyright © 2020 Nick Ivanov. All rights reserved.
//

import UIKit

class DemonsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let demons = DemonsAPI.getdemons()

    let demonsTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .black
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigation()
    
        view.addSubview(demonsTableView)
        
        demonsTableView.dataSource = self
        demonsTableView.delegate = self
        
        //configure TableView
        demonsTableView.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        demonsTableView.leadingAnchor.constraint(equalTo:view.leadingAnchor).isActive = true
        demonsTableView.trailingAnchor.constraint(equalTo:view.trailingAnchor).isActive = true
        demonsTableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        
        demonsTableView.register(DemonTableViewCell.self, forCellReuseIdentifier: "demonCell")
    }
    
    func setUpNavigation() {
        navigationItem.title = "Choose character"
        self.navigationController?.navigationBar.barTintColor = .black
        self.navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.red,
            .font: UIFont(name: "Courier-Bold", size: 20)!]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        demonsTableView.deselectRow(at: indexPath, animated: true)
        let detailViewController = DetailViewController()
        detailViewController.setDemonName = demons[indexPath.row]
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        demons.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 210
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "demonCell", for: indexPath) as! DemonTableViewCell
        cell.selectionStyle = .none
        cell.demon = demons[indexPath.row]
        cell.backgroundColor = .black
        
        return cell
    }
}
