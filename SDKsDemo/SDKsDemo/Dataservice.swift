//
//  Dataservice.swift
//  SDKsDemo
//
//  Created by Miguel Muñoz on 25/11/22.
//

import Foundation

class Dataservice{
    static let shared = Dataservice()
    
    func loginWithPassword(_ password: String, _ completion: @escaping((Bool)->())){
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        let jsonBody = try? encoder.encode(user)
        var request = URLRequest(url: URL(string: "https://sdk.sendo.health/login?appKey=\(password)")!)
        request.httpMethod = "POST"
        request.httpBody = jsonBody
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        URLSession.shared.dataTask(with: request){ data, response, error in
            if error == nil{
                completion(true)
            }else{
                completion(false)
            }
        }.resume()
    }
    
}
