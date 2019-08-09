//
//  APIManager.swift
//  RandomJoke
//
//  Created by Prapasiri Lertkriangkraiying on 8/8/2562 BE.
//  Copyright © 2562 Prapasiri Lertkriangkraiying. All rights reserved.
//

import Foundation
//import Alamofire

class APIManager {
    
    func getRandomJoke() {
        guard let url = URL(string: "https://matchilling-chuck-norris-jokes-v1.p.rapidapi.com/jokes/random")
            else {
                return
        }
        var request =  URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("d7cd140d6emsh9d6e2be744bfd51p13f344jsn471a4d8ce9d5", forHTTPHeaderField: "x-rpidapi-key")
        let task = URLSession.shared.dataTask(with: request) {
            (data, response, error) in
            if let error = error {
                print("ERROR: \(error.localizedDescription)")
            } else if let data = data {
                print("DATA: \(data)")
            }
        }
        task.resume()
    }
}
