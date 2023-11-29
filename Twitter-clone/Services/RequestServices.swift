//
//  RequestServices.swift
//  Twitter-clone
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 23/11/2023.
//

import Foundation

public class RequestServices {
     public static var requestDomain = ""
    
    public static func postTweet(text: String, user: String, username: String, userId: String, completion: @escaping (_ result: [String: Any]?) -> Void) {
        let params =  ["text" :text, "userId" : userId, "user" : user, "username" : username] as [String : Any]
        let url = URL(string: requestDomain)!
        let session = URLSession.shared
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        
        do{
            request.httpBody = try JSONSerialization.data(withJSONObject: params, options: .prettyPrinted)
            
        }catch let error{
            print(error)
        }
        //Authentication Part in HTTP request
        let token = UserDefaults.standard.object(forKey: "jsonwebtoken")!
        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let task = session.dataTask(with: request) { data, res, err in
            guard err == nil else {
                return
            }
            guard let data = data else {return}
            
            do{
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String : Any] {
                    completion(json)
                }
            }catch let err {
                print(err)
            }
        }
        task.resume()
    }
    static func fetchData(completion: @escaping (_ result: Result<Data?, NetworkError>) -> Void) {
                
                let url = URL(string: requestDomain)!
                
                let session = URLSession.shared
                
                var request = URLRequest(url: url)
                
                request.httpMethod = "GET"
               
                request.addValue("application/json", forHTTPHeaderField: "Content-Type")
                request.addValue("application/json", forHTTPHeaderField: "Accept")

                let task = session.dataTask(with: request) { data, res, err in
                    guard err == nil else {
                        completion(.failure(.noData))
                        return
                        
                    }
                    
                    guard let data = data else { return }
                    
                    completion(.success(data))
                }
                
                task.resume()
        }
    
}
