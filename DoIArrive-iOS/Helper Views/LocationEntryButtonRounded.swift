//
//  LocationEntryButtonRounded.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

struct LocationEntryButtonRounded: View {
    
    @State var textToShow: String = "From..."
    
    @State var showPopOver: Bool = false
    
    var body: some View {
        Button {
            print("Hello")
            showPopOver = true
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
                        .stroke(DarkDesign.stdBorderColor, lineWidth: 2)
                )
            }
        }
        .popover(isPresented: $showPopOver) {
            LocationSearchView()
        }

    }
}

struct LocationEntryButtonRounded_Previews: PreviewProvider {
    static var previews: some View {
        LocationEntryButtonRounded()
    }
}
