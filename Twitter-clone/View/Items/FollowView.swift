//
//  FollowView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 30/10/2023.
//

import SwiftUI

struct FollowView: View {
    var count: Int
    var title: String
    var body: some View {
        HStack{
            Text("\(count)")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
            Text(title)
                .foregroundColor(.gray)
        }
    }
}

//   
