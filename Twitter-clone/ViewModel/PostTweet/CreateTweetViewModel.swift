//
//  CreateTweetViewModel.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 23/11/2023.
//

import SwiftUI
import Observation

class CreateTweetViewModel : ObservableObject {
    func uploadPost(text: String ) {
        guard let user = AuthViewModel.shared.currentUser else { return }
        RequestServices.requestDomain = "http://localhost:3000/tweets"
        RequestServices.postTweet(text: text, user: user.name, username: user.username, userId: user.id) { result in
            
        }
    }
}
