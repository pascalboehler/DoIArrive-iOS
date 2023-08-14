//
//  DropdownSelectorView.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

struct DropdownSelectorView: View {
    
    var label: String = "Departure"
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.down")
                    .opacity(0.5)
                Text(label)
            }
            .padding(EdgeInsets(top: 7, leading: 10, bottom: 7, trailing: 15))
            .background(Color(red: 0.2, green: 0.2, blue: 0.21))
            .cornerRadius(10)
            /*.overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 0.36, green: 0.34, blue: 0.34), lineWidth: 2)
            )*/
        }
    }
}

struct DropdownSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        DropdownSelectorView()
    }
}
