//
//  TweetCellViewModel.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 01/12/2023.
//

import SwiftUI 

class TweetCellViewModel: ObservableObject {
    @Published var tweet: Tweet
    
    init(tweet: Tweet) {
        self.tweet = tweet
    }
}
