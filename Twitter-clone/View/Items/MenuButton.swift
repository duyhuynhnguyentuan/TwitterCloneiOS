//
//  MenuButton.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 30/10/2023.
//

import SwiftUI

struct MenuButton: View {
    var title: String
    
    var body: some View {
        HStack(spacing: 15){
            Image(title)
                .resizable()
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .frame(width: 24, height: 24)
                .foregroundColor(.gray)
       
        Text(title)
            .foregroundColor(.black)
        Spacer()
        }
        .padding(.vertical, 12)
    }
}

#Preview {
    MenuButton(title: "Lists")
}
