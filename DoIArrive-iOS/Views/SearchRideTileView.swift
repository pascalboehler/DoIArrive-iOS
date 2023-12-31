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
    
    @State var selectedStartDate: Date = Date.now
    
    @State var depArrSel: DepArrSel = .departure
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Search for a ride")
                        .font(.system(.title2))
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))

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
                            .frame(width: 10)
                    }
                }
                .padding(.vertical, 5)
                
                HStack {
                    DropdownSelectorView()

                    DatePicker("", selection: $selectedStartDate)
                }
                
                NavigationLink(destination: {
                    SearchResultView()
                }, label: {
                    LargeNavigationLinkButtonRounded(label: "Search journey")
                })
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                
            }
            .padding()
            
        }
        .padding(.all, 5)
        .foregroundColor(.white)
        .background(DarkDesign.stdTileBGColor)
        .cornerRadius(20.0)
    }
}

struct SearchRideTileView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRideTileView()
    }
}
