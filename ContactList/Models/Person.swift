//
//  Person.swift
//  ContactList
//
//  Created by Philip Noskov on 18.12.2022.
//

import Foundation


struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonList() -> [Person] {
        let data = DataStore()
        var persons: [Person] = []
        
        let shuffledNames = data.names.shuffled()
        let shuffledSurnames = data.surnames.shuffled()
        let shuffledEmails = data.emails.shuffled()
        let shuffledPhones = data.phones.shuffled()
        
        let minCount = min(shuffledNames.count, shuffledSurnames.count, shuffledEmails.count, shuffledPhones.count)
        
        
        for i in 0..<minCount {
            let person = Person(
                name: shuffledNames[i],
                surname: shuffledSurnames[i],
                email: shuffledEmails[i],
                phone: shuffledPhones[i])
            
            persons.append(person)
        }
        
        return persons
    }
    
}
