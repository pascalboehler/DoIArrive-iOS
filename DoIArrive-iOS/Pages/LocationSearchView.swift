//
//  LocationSearchView.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 14.08.23.
//

import SwiftUI
import CoreLocationUI

struct LocationSearchView: View {
    
    @State var searchResults: [LocationResult] = [
        LocationResult(location: "Frankfurt am Main"),
        LocationResult(location: "Frankfurt am Main HBF")
    ]
    
    var placeholder: String = "from..."
    
    @State var textFieldText: String = ""
    
    @StateObject var locHelp = LocationHelper()
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    
                    VStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                            TextField(placeholder, text: $textFieldText)
                                .opacity(0.7)
                            
                        }
                        Divider()
                            .background(.white)
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    Button {
                        locHelp.requestLocation()
                        locHelp.lookUpCurrentLocation { placemark in
                            guard let postalCode = placemark?.postalCode else {
                                print("NO POSTALCODE")
                                return
                            }
                            
                            guard let street = placemark?.name else {
                                print("No street")
                                return
                            }
                            
                            guard let city = placemark?.locality else {
                                print("No city")
                                return
                            }
                            
                            guard let country = placemark?.country else {
                                print("No country")
                                return
                            }
                            
                            let stringBuild = "\(street), \(postalCode) \(city), \(country)"
                            
                            textFieldText = stringBuild
                            
                            print(stringBuild)
                        }
                    } label: {
                        Image(systemName: "location.viewfinder")
                    }
                }
                .font(.system(size: 20))
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 15, trailing: 20))
                ScrollView {
                    ForEach(searchResults) { result in
                        LocationSearchResultItemView(item: result)
                        
                    }
                }
                .foregroundColor(.white)
                //.background(Color(red: 0.1, green: 0.1, blue: 0.1))
                .cornerRadius(20)
            }
            .background(Color(red: 0.1, green: 0.1, blue: 0.1))
            .navigationTitle("From")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Done") {
                    dismiss()
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView()
    }
}
