//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 李昀 on 2020/12/5.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var userData: UserData
  
  var body: some View {
    NavigationView {
      List {
        Toggle(isOn: $userData.showFavoritesOnly) {
          Text("Favorites only")
        }
        
        ForEach(userData.landmarks) { landmark in
          if !self.userData.showFavoritesOnly || landmark.isFavorite {
            NavigationLink(
              destination: LandmarkDetail(landmark: landmark)) {
              LandmarkRow(landmark: landmark)
            }
          }
        }
      }
      .navigationBarTitle(Text("Landmarks"))
    }
    
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    ForEach(["iphone SE", "iPhone XS Max"], id: \.self) { deviceName in
      LandmarkList()
        .previewDevice(PreviewDevice(rawValue: deviceName))
        .previewDisplayName(deviceName)
    }
  }
}
