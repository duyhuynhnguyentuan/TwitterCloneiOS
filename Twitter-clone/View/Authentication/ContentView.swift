//
//  ContentView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 26/10/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel : AuthViewModel
    var body: some View {
        if viewModel.isAuthenticated  {
            if let user = viewModel.currentUser {
                MainView(user: user)
            }
        }else {
            WelcomeView()
        }
    }
}

#Preview {
    ContentView()
}
