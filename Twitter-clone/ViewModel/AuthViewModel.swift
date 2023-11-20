//
//  AuthViewModel.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 17/11/2023.
//

import SwiftUI
class AuthViewModel: ObservableObject {
    @Published var isAuthenticated: Bool = false
    @Published var currentUser: User?
    func login(email: String, password: String){
        let defaults = UserDefaults.standard
        AuthServices.login(email: email, password: password) { result in
            switch result {
            case .success(let data):
                guard let user = try? JSONDecoder().decode(ApiResponse.self, from: data as! Data) else {
                    return
                }
                DispatchQueue.main.async {
                    defaults.set(user.token, forKey: "jsonwebtoken")
                    defaults.set(user.user.id, forKey: "userid")
                    self.isAuthenticated = true
                    self.currentUser = user.user
                }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    func register(name: String, username: String, email: String, password: String) {
        
        AuthServices.register(email: email, username: username, password: password, name: name) { res in
            switch res {
                case .success(let data):
                    guard let user = try? JSONDecoder().decode(ApiResponse.self, from: data as! Data) else {
                        return
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                
                
            }
        }
    }
    func logout(){
        
    }
}


