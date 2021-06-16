//
//  NumbersView.swift
//  ContactListSwiftUIHW
//
//  Created by Кирилл Нескоромный on 15.06.2021.
//

import SwiftUI

struct NumbersView: View {
    
    let contacts: [Contact]
    
    var body: some View {
        
        
            List {
                ForEach(contacts, id: \.self) { contact in
                    Section(header: Text("\(contact.fullName)")) {
                        List {
                            DetailRowView(
                                imageString: "phone",
                                text: "\(contact.phone)"
                            )
                            DetailRowView(
                                imageString: "tray",
                                text: "\(contact.email)"
                            )
                        }
                        .frame(width: 300, height: 80, alignment: .leading)
                    }
                    .textCase(.none)
                }
            }
        }
    
    
    struct NumbersView_Previews: PreviewProvider {
        static var previews: some View {
            NumbersView(contacts: Contact.getContactList())
        }
    }
    
}


