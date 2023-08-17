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
            .navigationTitle("Settings")
            .foregroundColor(.white)
            .background(Color(red: 0.09, green: 0.09, blue: 0.09))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
