//
//  LogInView.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 04/11/2023.
//

import SwiftUI

struct LogInView: View {
    @State var email = ""
    @State var password = ""
    @State var emailDone = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        if !emailDone {
            VStack{
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
                        }
                        .padding(.horizontal)
                        Image("Twitter")
                            .resizable()
                            .scaledToFill()
                            .padding(.trailing)
                            .frame(width: 20, height: 20)
                    }
                    Text("To get started first enter your phone, email, or @username")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    CustomAuthTextField(placeholder: "Phone, email, or username", text: $email)
                }
                Spacer()
                VStack{
                    Button{
                        if !email.isEmpty{
                            self.emailDone.toggle()
                        }
                    }label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color("bg"))
                            .overlay(
                            Text("Next")
                                .foregroundColor(.white)
                            )
                    }
                    .padding(.bottom, 4)
                    Text("Forgot password?")
                        .foregroundColor(.blue)
                }
            }
        }
        else{
            VStack{
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
                        }
                        .padding(.horizontal)
                        Image("Twitter")
                            .resizable()
                            .scaledToFill()
                            .padding(.trailing)
                            .frame(width: 20, height: 20)
                    }
                    Text("Enter your password")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    SecureAuthTextField(placeholder: "Password", text: $password)
                }
                Spacer()
                VStack{
                    Button{
                        
                    }label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color("bg"))
                            .overlay(
                            Text("Login")
                                .foregroundColor(.white)
                            )
                    }
                    .padding(.bottom, 4)
                    Text("Forgot password?")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

#Preview {
    LogInView()
}
