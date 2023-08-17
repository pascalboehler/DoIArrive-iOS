//
//  SearchResultView.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 17.08.23.
//

import SwiftUI

struct SearchResultView: View {
    var body: some View {
        NavigationStack {
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Text("")
                        .padding(5.0)
                    Spacer()
                }
                Spacer()
            }
            .navigationTitle("Search results")
            .foregroundColor(.white)
            .background(DarkDesign.stdBGColor)
        }
    }
}

struct SearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultView()
    }
}
