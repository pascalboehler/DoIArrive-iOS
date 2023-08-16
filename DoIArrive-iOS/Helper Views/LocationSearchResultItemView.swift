//
//  LocationSearchResultItemView.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

struct LocationSearchResultItemView: View {
    
    @ObservedObject var item: LocationResult
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image(systemName: "location.viewfinder")
                        .font(.system(size: 20))
                    Spacer()
                        .frame(width: 15)
                    Text(item.location)
                    Spacer()
                }
                .onTapGesture {
                    print(item.location)
                }
                SymbolButtonSwitchingView(deSelStateIcon: "star", selStateIcon: "star.fill", action: {
                    item.toggleFav()
                })
                
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            Divider()
                .background(.white)
        }
        .padding(EdgeInsets(top: 5, leading: 10, bottom: 0, trailing: 10))
    }
}
