//
//  TabBarController.swift
//  ContactList
//
//  Created by Philip Noskov on 18.12.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    let persons = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI(whit: persons)
    }
    
    private func setupUI(whit persons: [Person]) {
        guard let mainListVC = viewControllers?.first as? MainListTableViewController else { return }
        guard let detailListVC = viewControllers?.last as? DetailListTableViewController else { return }
        
        mainListVC.persons = persons
        detailListVC.persons = persons
    }

}
