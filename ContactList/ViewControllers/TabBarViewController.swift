//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Владислав Соколов on 28.02.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    private var personList = Person.getPersons()

    override func viewDidLoad() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let contactVC = $0 as? ContactListViewController {
                contactVC.person = personList
            } else if let personVC = $0 as? PersonsListViewController {
                personVC.person = personList
            }
        }
    }
}
