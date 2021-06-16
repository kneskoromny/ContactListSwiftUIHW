//
//  ContactsView.swift
//  ContactListSwiftUIHW
//
//  Created by Кирилл Нескоромный on 15.06.2021.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts: [Contact]
    
    var body: some View {
        
        VStack {
            List(contacts, id: \.self) { contact in
                
                NavigationLink(destination: ContactDetailView(contact: contact)) {
                    DetailRowView(
                        imageString: "",
                        text: contact.fullName
                    )
                }
            }
        }
    }
}


struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: Contact.getContactList())
    }
}
