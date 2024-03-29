//
//  EditProfileViewModel.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 06/12/2023.
//

import SwiftUI

class EditProfileViewModel: ObservableObject {
    var user : User
    @Published var uploadComplete = false
    init(user: User) {
        self.user = user
    }
    func save(name: String? , bio: String?, website: String? , location: String?){
        guard let userNewName = name else {
            return
        }
        guard let userNewBio = bio else {
            return
        }
        guard let userNewWebsite = website else {return}
        
        guard let userNewLocation = location else {return}
        
        self.user.name = userNewName
        self.user.bio = userNewBio
        self.user.website = userNewWebsite
        self.user.location = userNewLocation
        self.uploadComplete .toggle()
    }
}
