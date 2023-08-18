//
//  LargeNavigationLinkButtonRounded.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 18.08.23.
//

import SwiftUI

struct LargeNavigationLinkButtonRounded: View {
    
    var label: String = "Search result"
    
    
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 50)
            Text(label)
            Spacer()
                .frame(width: 50)
        }
        .foregroundColor(.white)
        .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
        .background(DarkDesign.stdButtonBlue)
        .cornerRadius(14)
    }
}

struct LargeNavigationLinkButtonRounded_Previews: PreviewProvider {
    static var previews: some View {
        LargeNavigationLinkButtonRounded()
    }
}
