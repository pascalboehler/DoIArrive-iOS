//
//  SymbolButtonRounded.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

struct SymbolButtonRounded: View {
    
    var action: () -> Void
    
    var iconToShow: String = "arrow.up.arrow.down"
    
    var body: some View {
        Button(action: action) {
            Image(systemName: iconToShow)
                .font(.system(size: 20))
                .padding(EdgeInsets(top: 15, leading: 11, bottom: 15, trailing: 11))
                .foregroundColor(.white)
                .background(DarkDesign.stdButtonBlue)
                .cornerRadius(14)
        }
    }
}

struct SymbolButtonRounded_Previews: PreviewProvider {
    static var previews: some View {
        SymbolButtonRounded {
            print("Hello")
        }
    }
}
