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
    var _id : String
    var id: String { _id }
    let username: String
    let name: String
    let email: String
    var location: String?
    var bio: String?
    var website: String?
    var avatarExists: String?
    var followers: [String]
    var followings: [String]
    
    
}
