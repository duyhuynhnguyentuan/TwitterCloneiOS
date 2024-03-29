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
    public static var requestDomain = ""
   
    static func login(email: String, password: String, completion: @escaping (_ result: Result<Data?, AuthenticationError>) -> Void) {
        let urlString = URL(string: requestDomain)!
        makeRequest(urlString: urlString, reqBody: ["email": email, "password": password]) { res in
            switch res {
                case .success(let data):
                    completion(.success(data))
            case .failure(let error):
                completion(.failure(.invalidCredentials))
                print(error.localizedDescription)
            }
        }
    }
    
    static func register(email: String, username: String, password: String, name: String, completion: @escaping (_ result: Result<Data?, AuthenticationError>) -> Void) {
        let urlString = URL(string: "http://localhost:3000/users")!
        makeRequest(urlString: urlString, reqBody: ["email": email, "username": username, "name": name, "password": password]) { res in
            switch res {
                case .success(let data):
                    completion(.success(data))
                case .failure(.invalidURL):
                    completion(.failure(.custom(errorMessage: "The user couldn't be registered")))
                case .failure(.noData):
                    completion(.failure(.custom(errorMessage: "No Data")))
                case .failure(.decodingError):
                    completion(.failure(.invalidCredentials))
            }
        }
    }
    
    static func makeRequest(urlString: URL, reqBody: [String: Any], completion: @escaping (_ result: Result<Data?, NetworkError>) -> Void) {
//        let urlRequest = URLRequest(url: urlString)
//
//        let url = URL(string: requestDomain)!
        
        let session = URLSession.shared
        
        var request = URLRequest(url: urlString)
        
        request.httpMethod = "POST"
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: reqBody, options: .prettyPrinted)
        }
        catch let error {
            print(error)
        }
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")

        let task = session.dataTask(with: request) { data, res, err in
            guard err == nil else {
                
                return
                
            }
            
            guard let data = data else {
                completion(.failure(.noData))
                return
                
            }
            
            completion(.success(data))
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    
                    
                }
            }
            catch let error {
                completion(.failure(.decodingError))
                print(error)
            }
        }
        
        task.resume()
    }
    //Fetch user function
    static func fetchUser(id: String, completion: @escaping (_ result: Result<Data, AuthenticationError>) -> Void) {
        let urlString = URL(string: "http://localhost:3000/users/\(id)")!
        var urlRequest = URLRequest(url: urlString)
        let session = URLSession.shared
        urlRequest.httpMethod = "GET"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let task = session.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                // Handle the case where an error occurred during the network request
                completion(.failure(.custom(errorMessage: error.localizedDescription )))
                return
            }
            
            guard let data = data else {
                // Handle the case where data is nil
                completion(.failure(.invalidCredentials))
                return
            }
            
            // Handle the successful case where data is retrieved
            completion(.success(data))
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    // Process JSON data if needed
                    // Note: Currently, this block is empty in the provided code
                }
            } catch let error {
                // Handle any error during JSON serialization
                completion(.failure(.custom(errorMessage: error.localizedDescription )))
                print(error)
            }
        }
        task.resume()
    }

}
