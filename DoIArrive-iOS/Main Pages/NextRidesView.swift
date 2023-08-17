//
//  NextRidesView.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

struct NextRidesView: View {
    var body: some View {
        NavigationStack {
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Text("Hello")
                        .padding(5.0)
                    Spacer()
                }
                Spacer()
            }
            .navigationTitle("Next up")
            .foregroundColor(.white)
            .background(DarkDesign.stdBGColor)
        }
        
    }
}

struct NextRidesView_Previews: PreviewProvider {
    static var previews: some View {
        NextRidesView()
    }
}
