//
//  SearchRideTileView.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI

struct SearchRideTileView: View {
    
    @State var locationFrom: String = "From..."
    @State var locationTo: String = "To..."
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Search for a ride")
                        .font(.system(.title2))
                    Spacer()
                }
                Divider()
                    .background(Color(red: 0.25, green: 0.25, blue: 0.25, opacity: 0.46))
                ZStack {
                    VStack {
                        LocationEntryButtonRounded(textToShow: locationFrom)
                        Spacer()
                            .frame(height: 10)
                        LocationEntryButtonRounded(textToShow: locationTo)
                    }
                    HStack {
                        // TODO: Make this better
                        Spacer()
                        SymbolButtonRounded {
                            let temp = locationTo
                            locationTo = locationFrom
                            locationFrom = temp
                            print(locationTo)
                            print("Swapped")
                        }
                        Spacer()
                            .frame(width: 20)
                    }
                    
                }
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                
            }
            .padding()
            .foregroundColor(.white)
            .background(Color(red: 0.12, green: 0.12, blue: 0.12))
            .cornerRadius(20.0)
        }
        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
    }
}

struct SearchRideTileView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRideTileView()
    }
}
