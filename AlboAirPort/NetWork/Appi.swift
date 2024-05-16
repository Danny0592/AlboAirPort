//
//  Appi.swift
//  AlboAirPort
//
//  Created by daniel ortiz millan on 13/05/24.
//file
// view model va en la primer pantalla
// navigation link y navigation link
//spiner

import Foundation

class APIClient {
    
    func fetchData (Country: String, completion: @escaping (Result<[Airport], Error>) -> Void) {
        let headers = [
            "X-RapidAPI-Key": "c2bcfa61f1mshf2abcf111b8af04p11138ejsnd5ae171d439b",
            "X-RapidAPI-Host": "radarflight.p.rapidapi.com"
        ]
        
        var request = URLRequest(url: URL(string: "https://radarflight.p.rapidapi.com/api/v1/airport/\(Country)")!,timeoutInterval: Double.infinity)
        
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                if let error = error {
                    print("Error: \(error)")
                } else {
                }
                return
            }
            print(String(data: data, encoding: .utf8)!)
            
            do {
                let result = try JSONDecoder().decode([Airport].self, from: data)
                completion(.success(result))
            } catch {
                print("Error decoding JSON:\(error)")
                completion(.failure(error))
            }
        }.resume()
    }
}


