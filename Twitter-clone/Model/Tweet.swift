//
//  Tweet.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 23/11/2023.
//

import SwiftUI

struct Tweet: Identifiable, Decodable {
    let _id: String
    let text: String
    let userId: String
    let username: String
    let user: String
    var id: String? {
        return _id
    }
    let image: String?
    var likes : [String]
    var didLike: Bool? = false
}
