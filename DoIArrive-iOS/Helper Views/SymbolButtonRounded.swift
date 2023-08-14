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
                .padding(EdgeInsets(top: 15, leading: 12, bottom: 15, trailing: 12))
                .foregroundColor(.white)
                .background(Color(red: 0.09, green: 0.08, blue: 0.4))
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
