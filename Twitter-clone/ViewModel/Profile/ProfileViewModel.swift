//
//  ProfileViewModel.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 05/12/2023.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
    @Published var  user: User
    init(user: User) {
        self.user = user 
    }
}
