//
//  DropdownSelectorView.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

enum DepArrSel {
    case departure, arrival
}

struct DropdownSelectorView: View {
    
    @State var selector: DepArrSel = .departure
    
    var body: some View {
        
        Menu {
            Button {
                selector = .departure
            } label: {
                Text("Departure")
            }
            Button {
                selector = .arrival
            } label: {
                Text("Arrival")
            }
        } label: {
            // TODO: Make this work without glitch!
            VStack {
                HStack {
                    Image(systemName: "chevron.down")
                        .opacity(0.5)
                    switch (selector) {
                    case DepArrSel.arrival:
                        Text("Arrival")
                    case DepArrSel.departure:
                        Text("Departure")
                    }
                }
                .padding(EdgeInsets(top: 7, leading: 10, bottom: 7, trailing: 15))
                .background(DarkDesign.stdDropDownColor)
                .cornerRadius(8)
            }
            
        }
        
        
    }
}

struct DropdownSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        DropdownSelectorView()
    }
}
