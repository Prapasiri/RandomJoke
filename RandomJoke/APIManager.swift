//
//  APIManager.swift
//  RandomJoke
//
//  Created by Prapasiri Lertkriangkraiying on 8/8/2562 BE.
//  Copyright © 2562 Prapasiri Lertkriangkraiying. All rights reserved.
//

//import Foundation
////import Alamofire
//
//class APIManager {
//
//    func getRandomJoke() {
//        guard let url = URL(string: "https://matchilling-chuck-norris-jokes-v1.p.rapidapi.com/jokes/random")
//            else {
//                return
//        }
//        var request =  URLRequest(url: url)
//        request.httpMethod = "GET"
//        request.setValue("d7cd140d6emsh9d6e2be744bfd51p13f344jsn471a4d8ce9d5", forHTTPHeaderField: "x-rpidapi-key")
//        let task = URLSession.shared.dataTask(with: request) {
//            (data, response, error) in
//            if let error = error {
//                print("ERROR: \(error.localizedDescription)")
//            } else if let data = data {
//                print("DATA: \(data)")
//            }
//        }
//        task.resume()
//    }
//}


import Foundation
import Alamofire

class APIManager {
    func getRandomJoke(completion: @escaping (Fuck?) -> Void) {
        // https://matchilling-tronald-dump-v1.p.rapidapi.com/tag
//        guard let url = URL(string: "https://matchilling-chuck-norris-jokes-v1.p.rapidapi.com/jokes/random") else {
//            return
//        }
        guard let url = URL(string: "https://mashape-community-foaas.p.rapidapi.com/life/JINNY") else {
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
//        request.setValue("d7cd140d6emsh9d6e2be744bfd51p13f344jsn471a4d8ce9d5", forHTTPHeaderField: "x-rapidapi-key")
        request.setValue("8351d7c3bfmshc628cab0f1b737fp1826a1jsn14a2bc50ff0d", forHTTPHeaderField: "x-rapidapi-key")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let _ = error {
                print("error")
            } else if let data = data, let response = response as? HTTPURLResponse {
                if response.statusCode == 200 {
                    do {
//                        let joke = try JSONDecoder().decode(Joke.self, from: data)
//                        print(joke)
//                        completion(joke)
                        let quote = try JSONDecoder().decode(Fuck.self, from: data)
                        print(quote)
                        completion(quote)
                    } catch {
                        print("parse JSON failed")
                    }
                }
            }
        }
        task.resume()
    }
    
    func getRandomJokeAlamofire() {
        //application/hal+json
        let headers: HTTPHeaders = [
            "x-rapidapi-key": "8351d7c3bfmshc628cab0f1b737fp1826a1jsn14a2bc50ff0d",
//            "Accept": "application/json"
            "Accept": "application/hal+json"
        ]
        Alamofire.request("https://mashape-community-foaas.p.rapidapi.com/life/JINNY", headers: headers).responseJSON { (data) in
            print(data)
        }
    }
}


