//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Владислав Соколов on 27.02.2024.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    var person: [Person] = []
}



// MARK: - UITableViewDataSource
extension PersonsListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personList", for: indexPath)
        let person = person[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        } else if indexPath.row == 1 {
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        person[section].fullName
    }
}


// MARK: - UITableViewDelegate
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
