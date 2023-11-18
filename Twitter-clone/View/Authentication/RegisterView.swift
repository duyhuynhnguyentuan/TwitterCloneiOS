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
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = AuthViewModel()
    var body: some View {
        VStack{
            ZStack{
                HStack{
                    Button{
                        dismiss()
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
                        self.viewModel.register(reqBody: ["username": "Dao Huynh", "name": name, "email" : email, "password" : "1234561211" ])
                    }label: {
                        Capsule()
                            .frame(width: 60, height: 30, alignment: .center)
                            .foregroundColor(Color("bg"))
                            .overlay(
                            Text("Next")
                                .foregroundColor(.white)
                            )
                    }
                    .padding(.bottom)
                }
                .padding(.trailing, 24)
            }
        }
    }
}

#Preview {
    RegisterView()
}
