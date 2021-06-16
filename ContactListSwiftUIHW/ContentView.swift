//
//  ContentView.swift
//  ContactListSwiftUIHW
//
//  Created by Кирилл Нескоромный on 15.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    let contacts = Contact.getContactList()
    
    var body: some View {
        
        NavigationView {
            TabView {
            ContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
            }
            .navigationBarTitle("Contact List")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
