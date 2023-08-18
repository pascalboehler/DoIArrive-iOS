//
//  SettingsView.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                    .frame(height: 20.0)
                Button(action: {
                    print("Hello World")
                }, label: {
                    ProfileTileView()
                })
                Spacer()
            }
            .navigationTitle("Settings")
            .foregroundColor(.white)
            .background(DarkDesign.stdBGColor)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
