//
//  CustomAuthTextField.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 03/11/2023.
//

import SwiftUI

struct CustomAuthTextField: View {
    var placeholder: String
    @Binding var text: String
    var body: some View {
        VStack{
            ZStack(alignment: .leading){
//                if text.isEmpty {
//                    Text(placeholder)
//                        .foregroundColor(.gray)
//                }
                TextField("", text: $text)
                    .placeholder(when:text.isEmpty){
                        Text(placeholder)
                            .foregroundStyle(
                                .linearGradient(
                                    colors: [.purple, .blue], startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .opacity(0.7)
                    }
                    .frame(height: 45)
                    .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
            }
            Rectangle()
                .frame(height: 1, alignment: .center)
                .foregroundColor(.gray)
                .padding(.top, -2)
        }
        .padding(.horizontal)
    }
}

//#Preview {
//    CustomAuthTextField()
//}
