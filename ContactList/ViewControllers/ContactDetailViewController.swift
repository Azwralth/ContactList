//
//  ViewController.swift
//  ContactList
//
//  Created by Владислав Соколов on 27.02.2024.
//

import UIKit

final class ContactDetailViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(person.fullName)"
        
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }


}

