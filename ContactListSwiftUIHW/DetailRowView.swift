//
//  DetailRowView.swift
//  ContactListSwiftUIHW
//
//  Created by Кирилл Нескоромный on 16.06.2021.
//

import SwiftUI


struct DetailRowView: View {
   
    let imageString: String 
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageString)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct DetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRowView(
            imageString: "phone",
            text: Contact.getContact().phone
        )
    }
}
