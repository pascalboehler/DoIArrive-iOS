//
//  LargeTextButtonRounded.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

struct LargeTextButtonRounded: View {
    
    var action: () -> Void
    var label: String
    
    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                    .frame(width: 50)
                Text(label)
                Spacer()
                    .frame(width: 50)
            }
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
            .background(Color(red: 0.09, green: 0.08, blue: 0.4))
            .cornerRadius(14)
        }
    }
}

struct LargeTextButtonRounded_Previews: PreviewProvider {
    static var previews: some View {
        LargeTextButtonRounded(action: {
            print("Hello")
        }, label: "Hello world")
    }
}
