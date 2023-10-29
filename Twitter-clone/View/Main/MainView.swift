//
//  MainView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 29/10/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            TopBar()
            HomeView()
        }
    }
}

#Preview {
    MainView()
}
