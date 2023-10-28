//
//  FeedView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 26/10/2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(spacing: 18){
                TweetCellView(tweet: "Matcha laf cute soos motoj thees giowis", tweetImage: "post")
                Divider()
                ForEach(1...20, id: \.self){ _ in
                    TweetCellView(tweet: sampleText)
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        }
    }
}

#Preview {
    FeedView()
}
