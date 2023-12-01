//
//  TweetCellView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 27/10/2023.
//

import SwiftUI
import Kingfisher
struct TweetCellView: View {
    @ObservedObject var viewModel: TweetCellViewModel
    init(viewModel: TweetCellViewModel) {
        self.viewModel = viewModel
    }
    var body: some View {
        VStack{
            HStack(alignment: .top,spacing: 10) {
               Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 10){
                    (Text("\(self.viewModel.tweet.username)  ")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    +
                    Text("@\(self.viewModel.tweet.username)")
                    )
                    Text(self.viewModel.tweet.text)
                        .frame(maxHeight: 100, alignment: .top)

                    if case let imageId = viewModel.tweet.id {
                        if viewModel.tweet.image == "true" {
                            GeometryReader { proxy in
                                KFImage(URL(string: "http://localhost:3000/tweets/\(imageId)/image"))
                                    .resizable()
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .frame(width: proxy.frame(in: .global).width, height: 250)
                                    .cornerRadius(15)
                            }
                            .frame(height: 250)
                        }
                    }
                }
                Spacer()
            }
            //Cell Bottom
            HStack(spacing: 50, content: {
                Button{
                    
                }label: {
                    Image("Comments")
                        .resizable()
                        .frame(width: 16, height: 16)
                    
                }.foregroundColor(.gray)
                Button{
                    
                }label: {
                    Image("Retweet")
                        .resizable()
                        .frame(width: 18, height: 16)
                    
                }.foregroundColor(.gray)
                Button{
                    
                }label: {
                    Image("love")
                        .resizable()
                        .frame(width: 18, height: 15)
                    
                }.foregroundColor(.gray)
                Button{
                    
                }label: {
                    Image("upload")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .frame(width: 18, height: 16)
                    
                }.foregroundColor(.gray)
            })
            .padding(.top, 4)
            
        }
    }
}

//#Preview {
//    TweetCellView(tweet: sampleText)
//}

 var sampleText = "Loren ipsun dolor sit anet, consectetur adipisci elit, sed eiusnod tenpor incidunt ut labore et dolore nagna aliqua. Ut enin ad ninin venian, quis nostrun exercitationen ullan corporis suscipit laboriosan, nisi ut aliquid ex ea connodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillun dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt nollit anin id est laborun."
