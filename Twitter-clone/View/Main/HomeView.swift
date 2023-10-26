//
//  Home.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 26/10/2023.
//

import SwiftUI

struct HomeView: View {
    @State var selectedIndex = 0
    var body: some View {
        VStack{
            ZStack{
                TabView{
                    FeedView()
                        .onTapGesture {
                            self.selectedIndex = 0
                        }
                        .tabItem {
                            if (selectedIndex == 0) {
                                Image("Home")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }else{
                                Image("Home")
                            }
                            
                        }
                        .tag(0)
                    SearchView()
                        .onTapGesture {
                            self.selectedIndex = 1
                        }
                        .tabItem {
                            if (selectedIndex != 1){
                                Image("Search")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }else{
                                Image("Search")
                            }
                            
                        }
                        .tag(1)
                    NotificationView()
                        .onTapGesture {
                            self.selectedIndex = 2
                        }
                        .tabItem {
                            if (selectedIndex != 2) {
                                Image("Notifications")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }else{
                                Image("Notifications")
                            }
                        }
                        .tag(2)
                    MessagesView()
                        .onTapGesture {
                            self.selectedIndex = 3
                        }
                        .tabItem {
                            if (selectedIndex != 3) {
                                Image("Messages")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            }else{
                                Image("Messages")
                            }
                        }
                        .tag(3)
                }
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Button{
                            
                        }label: {
                            Image("tweet")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color("bg"))
                                .foregroundColor(.white)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .padding()
                }
                .padding(.bottom, 65)
            }
        }
    }
}

#Preview {
    HomeView()
}
