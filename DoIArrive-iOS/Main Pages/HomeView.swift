//
//  HomeView.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                SearchRideTileView()
                    .padding()
                Spacer()
            }
            .navigationTitle("Home")
            .foregroundColor(.white)
            .background(DarkDesign.stdBGColor)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
