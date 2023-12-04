//
//  SlideMenu.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 30/10/2023.
//

import SwiftUI
import SwiftUI

var menuButtons = ["Profile","Lists","Topics","Bookmarks","Moments"]

struct SlideMenu : View {
    @ObservedObject var viewModel: AuthViewModel
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    @State var show = true
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    NavigationLink(destination: UserProfile(user: viewModel.currentUser!)){
                        Image("logo")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                    }
                  
                    HStack(alignment: .top, spacing: 12) {
                        VStack(alignment: .leading, spacing: 12) {
                            NavigationLink(destination: UserProfile(user: viewModel.currentUser!)){
                                Text(viewModel.currentUser!.name)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                          
                            Text("@\(viewModel.currentUser!.name)")
                                .foregroundColor(.gray)
                            HStack(spacing: 20) {
                                FollowView(count: 8, title: "Following")
                                    .onTapGesture {
                                    }
                                FollowView(count: 18, title: "Following")
                                    .onTapGesture {
                                        // do something here....
                                    }
                                }
                                .padding(.top,10)
                            Divider()
                                .padding(.top,10)
                        }
                        Spacer(minLength: 0)
                        Button {
                            withAnimation {
                                show.toggle()
                            }
                        } label: {
                            Image(systemName: "chevron.up")
                                .rotationEffect(show ? .degrees(180) : .degrees(0))                               
                                .foregroundColor(Color("bg"))
                        }
                    }
                    VStack(alignment: .leading) {
                        ForEach(menuButtons, id: \.self) { menu in
                            MenuButton(title: menu)
                        }
                        Divider()
                            .padding(.top)
                        Button(action: {
                            // switch your actions or work based on title....
                        }) {
                            MenuButton(title: "Twitter Ads")
                        }
                        Divider()
                        Button(action: {}) {
                            Text("Settings and privacy")
                                .foregroundColor(.black)
                        }
                        .padding(.top)
                        Button(action: {}) {
                            Text("Help centre")
                                .foregroundColor(.black)
                        }
                        .padding(.top,20)
                        Spacer(minLength: 0)
                        Divider()
                            .padding(.bottom)
                        HStack {
                            Button(action: {}) {
                                Image("help")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .foregroundColor(Color("bg"))
                            }
                            Spacer(minLength: 0)
                            Button(action: {}) {
                                Image("barcode")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .foregroundColor(Color("bg"))
                            }
                        }
                    }
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 0)
                    
                    VStack(alignment: .leading) {
                        Button(action: {}) {
                            Text("Create a new account")
                                .foregroundColor(Color("bg"))
                        }
                        .padding(.bottom)
                        Button(action: {}) {
                            Text("Add an existing account")
                                .foregroundColor(Color("bg"))
                        }
                        Spacer(minLength: 0)
                    }
                    .opacity(show ? 0 : 1)
                    .frame(height: show ? 0 : nil)
                }
                .padding(.horizontal,20)
                .padding(.top,edges!.top == 0 ? 15 : edges?.top)
                .padding(.bottom,edges!.bottom == 0 ? 15 : edges?.bottom)
                .frame(width: UIScreen.main.bounds.width - 90)
                .background(Color.white)
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer(minLength: 0)
            }
        }
    }
}




//#Preview {
//    SlideMenu()
//}
