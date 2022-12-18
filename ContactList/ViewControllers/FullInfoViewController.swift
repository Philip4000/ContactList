//
//  FullInfoViewController.swift
//  ContactList
//
//  Created by Philip Noskov on 18.12.2022.
//

import UIKit

class FullInfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }

}
