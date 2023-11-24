//
//  User.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 17/11/2023.
//

import Foundation
struct ApiResponse: Decodable {
    var user: User
    var token: String
}

struct User: Decodable, Identifiable {
    var _id: String
    var name: String
    var username: String
    var email: String
    var followers: [String]
    var following: [String]
    var id: String { // Computed property to match Identifiable protocol
        return _id
    }
    
    // Optional properties
    var location: String?
    var bio: String?
    var website: String?
    var avatarExists: Bool?
    var isCurrentUser: Bool? = false
    var isFollowed: Bool? = false
}
