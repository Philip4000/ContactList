//
//  MainListTableViewController.swift
//  ContactList
//
//  Created by Philip Noskov on 18.12.2022.
//

import UIKit

class MainListTableViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainListCell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fullInfoVC = segue.destination as? FullInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        fullInfoVC.person = persons[indexPath.row]
    }

}
