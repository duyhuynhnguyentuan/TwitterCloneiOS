//
//  AuthServices.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 19/11/2023.
//

import Foundation
import SwiftUI

//enum to store error types
enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

enum AuthenticationError : Error {
    case invalidCredentials
    case custom(errorMessage: String)
}


public class AuthServices {
    
    static func register(email: String, username: String, password: String,name: String,  completion: @escaping (_ result : Result<Data?, AuthenticationError>) -> Void){
        let urlString = URL(string: "http://localhost:3000/users")!
        makeRequest(urlString: urlString, reqBody: ["email": email, "username" : username, "password": password]) { result in
            switch result{
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(.invalidCredentials))
            }
        }
    }
    
    static func makeRequest(urlString: URL, reqBody: [String: Any], completion: @escaping (_ result: Result<Data?, NetworkError>) -> Void ) {
        let session = URLSession.shared
        var request = URLRequest(url: urlString)
        request.httpMethod = "POST"
        do{
            request.httpBody = try JSONSerialization.data(withJSONObject: reqBody, options: .prettyPrinted)
        }catch let error {
            print(error)
        }
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let task = session.dataTask(with: request) { data, res, err in
            guard err == nil else {
                return
            }
            guard let data = data else{
                completion(.failure(.noData))
                return
            }
            do{
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    
                }
            }catch let error{
                completion(.failure(.decodingError))
                print(error)
            }
        }
        task.resume()
    }
}