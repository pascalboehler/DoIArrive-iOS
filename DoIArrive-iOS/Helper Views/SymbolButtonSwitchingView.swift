//
//  SymbolButtonSwitchingView.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

struct SymbolButtonSwitchingView: View {
    
    var deSelStateIcon: String = "star"
    var selStateIcon: String = "star.fill"
    
    var action: () -> Void
    
    @State var isSel: Bool = false
    
    var body: some View {
        Button(action: {
            isSel = !isSel
            action()
        }, label: {
            Image(systemName: isSel ? selStateIcon : deSelStateIcon)
        })
    }
}

