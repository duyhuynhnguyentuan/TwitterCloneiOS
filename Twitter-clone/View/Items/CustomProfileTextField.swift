//
//  CustomProfileTextField.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 04/12/2023.
//

import SwiftUI

struct CustomProfileTextField: View {
    @Binding var message : String
    var placeholder: String
    var body: some View {
        HStack{
            ZStack{
                HStack{
                    if message.isEmpty {
                        Text(placeholder)
                            .foregroundStyle(.gray)
                    }
                  
                    Spacer()
                }
                TextField("", text: $message)
                    .foregroundColor(.blue)
            }
        }
    }
}

//#Preview {
//    CustomProfileTextField()
//}
