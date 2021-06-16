//
//  ContactDetailView.swift
//  ContactListSwiftUIHW
//
//  Created by Кирилл Нескоромный on 15.06.2021.
//

import SwiftUI

struct ContactDetailView: View {
    
    let contact: Contact
    
    var body: some View {
        VStack {
            
            Section {
                
                List {
                    HStack {
                        Spacer()
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 150, height: 150)
                        Spacer()
                    }
                    .padding()
                    DetailRowView(
                        imageString: "phone",
                        text: "\(contact.phone)"
                    )
                    DetailRowView(
                        imageString: "tray",
                        text: "\(contact.email)"
                    )
                }
                .listStyle(GroupedListStyle())
            }
        }
        .navigationBarTitle("\(contact.fullName)")
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: Contact.getContact())
    }
}
