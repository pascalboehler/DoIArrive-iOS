//
//  LocationEntryButtonRounded.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

struct LocationEntryButtonRounded: View {
    
    @State var textToShow: String = "From..."
    
    var body: some View {
        Button {
            print("Hello")
        } label: {
            VStack {
                HStack {
                    Text(textToShow)
                        .opacity(0.8)
                    Spacer()
                }
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(red: 0.36, green: 0.34, blue: 0.34), lineWidth: 2)
                )
            }
        }

    }
}

struct LocationEntryButtonRounded_Previews: PreviewProvider {
    static var previews: some View {
        LocationEntryButtonRounded()
    }
}
