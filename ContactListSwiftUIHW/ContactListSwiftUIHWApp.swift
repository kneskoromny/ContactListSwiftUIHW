//
//  ContactListSwiftUIHWApp.swift
//  ContactListSwiftUIHW
//
//  Created by Кирилл Нескоромный on 15.06.2021.
//

import SwiftUI

@main
struct ContactListSwiftUIHWApp: App {
    
    let contacts = Contact.getContactList()
    
    var body: some Scene {
        WindowGroup {
            ContentView(contacts: contacts)
        }
    }
}
