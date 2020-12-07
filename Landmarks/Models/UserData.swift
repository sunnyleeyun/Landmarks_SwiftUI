//
//  UserData.swift
//  Landmarks
//
//  Created by 李昀 on 2020/12/6.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
  @Published var showFavoritesOnly = false
  @Published var landmarks = landmarkData
  
}
