//
//  Home.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 26/10/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            ZStack{
                TabView{
                    FeedView()
                        .tabItem {
                            Image("Home")
                        }
                    SearchView()
                        .tabItem {
                            Image("Search")
                        }
                    NotificationView()
                        .tabItem {
                            Image("Notifications")
                        }
                    MessagesView()
                        .tabItem {
                            Image("Messages")
                        }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
