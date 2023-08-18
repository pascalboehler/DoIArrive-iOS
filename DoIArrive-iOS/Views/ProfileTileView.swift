//
//  ProfileTileView.swift
//  DoIArrive-iOS
//
//  Created by Pingu on 18.08.23.
//

import SwiftUI

struct ProfileTileView: View {
    
    @State var userProfile: UserProfile = UserProfile(userName: "Ernst Müller", userEmail: "ernst@mueller.de", profileImage: Image("ProfilePicture"))
    
    var body: some View {
        HStack {
            userProfile.profileImage
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 90, height: 90)
                .padding([.all], 15.0)
                
            VStack(alignment: .leading, spacing: 5.0, content: {
                Text(userProfile.userName)
                    .font(.system(.title2))
                Text(verbatim: userProfile.userEmail)
                    .foregroundColor(DarkDesign.stdLightGrayTextColor)
            })
            Spacer()
            Text("🚇")
                .font(.system(size: 30.0))
            Spacer()
            Image(systemName: "chevron.right")
                .font(.system(size: 25.0))
                .padding([.trailing])
                .foregroundColor(DarkDesign.stdLightGrayTextColorTrans)
        }
        .foregroundColor(.white)
        .background(DarkDesign.stdTileBGColor)
        .cornerRadius(20.0)
        .padding()
    }
}

struct ProfileTileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTileView()
    }
}
