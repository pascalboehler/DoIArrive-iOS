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
                    .padding(5.0)
                Spacer()
            }
            .navigationTitle("Home")
            .foregroundColor(.white)
            .background(Color(red: 0.09, green: 0.09, blue: 0.09))
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}