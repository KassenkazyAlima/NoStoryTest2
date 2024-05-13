//
//  ViewController.swift
//  NoStoryTest
//
//  Created by Smagul Negmatov on 27.04.2024.
//

import UIKit

class ViewController: UIViewController {
    lazy var tableView:UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
//      tableView.backgroundColor = .clear
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "identifier")
        return tableView
    }()
    var dataSource = ["John","Maria","Tom","Ben"]
    var dataSource2 = ["Karen","Nestrol", "Maxiene","Lanuan"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
        let topTableViewConstraint =
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        let bottomTableViewConstraint =
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        let leftTableViewConstraint =
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)
        let rightTableViewConstraint =
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        topTableViewConstraint.isActive = true
        bottomTableViewConstraint.isActive = true
        leftTableViewConstraint.isActive = true
        rightTableViewConstraint.isActive = true
    }
    


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = dataSource[indexPath.row]
        content.secondaryText = dataSource2[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    
}

