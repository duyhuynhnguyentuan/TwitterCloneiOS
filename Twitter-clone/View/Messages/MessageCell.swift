//
//  MessageCell.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 29/10/2023.
//

import SwiftUI

struct MessageCell: View {
    @State var width = UIScreen.main.bounds.width
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .frame(width: width, height: 1)
                .foregroundColor(.gray)
                .opacity(0.3)
            HStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .padding(.leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Cem")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        Text("@cem_salta")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("6/20/21")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                    Text("You: how is it going")
                        .foregroundColor(.gray)
                    Spacer()
                }
            }
            .padding(.top, 2)
        }
        .frame(width: width, height: 84)
    }
}

#Preview {
    MessageCell()
}
