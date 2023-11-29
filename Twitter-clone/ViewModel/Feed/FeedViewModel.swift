//
//  FeedViewModel.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 29/11/2023.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var tweets = [Tweet]()
    init() {
        fetchTweet()
    }
    func fetchTweet() {
        RequestServices.requestDomain = "http://localhost:3000/tweets"
        RequestServices.fetchData{ res in
            switch res {
            case .success(let data) :
                guard let tweets = try? JSONDecoder().decode([Tweet].self, from: data as! Data) else { return }
                DispatchQueue.main.async {
                    self.tweets = tweets
                }
            case .failure(let err):
                print(err.localizedDescription)
                
            }
        }
    }
}
