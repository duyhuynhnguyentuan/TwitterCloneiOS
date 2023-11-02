//
//  WelcomeView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 02/11/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
                Spacer()
            }
            Spacer()
            Text("See what's happening in the world right now.")
                .font(.system(size: 30, weight: .heavy, design: .default))
                .frame(width: getRect().width * 0.9,alignment: .center)
            Spacer()
            VStack(spacing: 10){
                
            }
        }
    }
}

#Preview {
    WelcomeView()
}
