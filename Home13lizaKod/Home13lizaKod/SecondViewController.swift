//
//  SecondViewController.swift
//  Home13lizaKod
//
//  Created by Liza Dorozkina on 19.01.25.
//
import UIKit

class SecondViewController: UIViewController, UITableViewDataSource {
    
    var items: [Int] = [] {
        didSet { tableView.reloadData() }
    }
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(items[indexPath.row])"
        return cell
    }
    
    override func loadView() {
        view = tableView
    }
}

#Preview {
    SecondViewController()
}
