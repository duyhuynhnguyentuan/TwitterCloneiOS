//
//  Tweet.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 23/11/2023.
//

import SwiftUI
struct Tweet: Identifiable, Decodable {
    let _id: String
    var id: String {
        return _id
    }
    let text: String
    let userId: String
    let username: String
    let user: String
}
