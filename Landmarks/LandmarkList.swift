//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 李昀 on 2020/12/5.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    NavigationView {
      List(landmarkData) { landmark in
        NavigationLink(
          destination: LandmarkDetail(landmark: landmark)) {
          LandmarkRow(landmark: landmark)
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
