//
//  Model.swift
//  ContactListSwiftUIHW
//
//  Created by Кирилл Нескоромный on 16.06.2021.
//

struct Contact: Hashable {
    let name: String
    let surname: String
    
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}

extension Contact {
    
    static func getContactList() -> [Contact] {
        
        var contacts: [Contact] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let count = min(names.count, surnames.count, phones.count, emails.count)
        
        for iteration in 0..<count {
            let contact = Contact(
                name: names[iteration],
                surname: surnames[iteration],
                phone: phones[iteration],
                email: emails[iteration]
            )
            
            contacts.append(contact)
        }
        
        return contacts
        
    }
    
}
