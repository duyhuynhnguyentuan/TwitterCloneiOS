//
//  RegisterView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 03/11/2023.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            ZStack{
                HStack{
                    Button{
                        presentationMode.wrappedValue.dismiss()
                    }label: {
                        Text("Cancel")
                            .foregroundColor(.blue)
                    }
                    Spacer()
                }.padding(.horizontal)
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
                
            }
            Text("Create your account")
                .font(.title)
                .bold()
                .padding(.top, 30)
            VStack(alignment: .leading){
                CustomAuthTextField(placeholder: "Name", text: $name)
                CustomAuthTextField(placeholder: "Phone number or email", text: $email)
                SecureAuthTextField(placeholder: "Password", text: $password)
            }
            Spacer()
            VStack{
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                HStack{
                    Spacer()
                    Button{
                        
                    }label: {
                        Capsule()
                            .frame(width: 60, height: 30, alignment: .center)
                            .foregroundColor(Color("bg"))
                            .overlay(
                            Text("Next")
                                .foregroundColor(.white)
                            )
                    }
                }
                .padding(.trailing, 24)
            }
        }
    }
}

#Preview {
    RegisterView()
}
