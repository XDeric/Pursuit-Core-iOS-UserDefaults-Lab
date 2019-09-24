//
//  HoroscopeAPI.swift
//  UserDefault
//
//  Created by EricM on 9/24/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import Foundation

struct Horoscope: Codable {
    let sunsign: String
    let keywords: String
    let horoscope: String
}

//"http://sandipbgt.com/theastrologer/api/horoscope/gemini/today/"

class HoroscopeAPIManager {
    private init() {}
    
    static let shared = HoroscopeAPIManager()
    
    func getElement(celestialSpirit: String, completionHandler: @escaping (Result<Horoscope, AppError>) -> Void) {
        let urlStr = "http://sandipbgt.com/theastrologer/api/horoscope/\(celestialSpirit)/today/"
        guard let url = URL(string: urlStr) else {
            completionHandler(.failure(.badURL))
            return
        }
        
        NetworkHelper.manager.performDataTask(withUrl: url, andMethod: .get) { (result) in
            switch result {
            case .failure(let error) :
                completionHandler(.failure(error))
            case .success(let data):
                do {
                    let horoscopeInfo = try JSONDecoder().decode(Horoscope.self, from: data)
                    completionHandler(.success(horoscopeInfo))
                } catch {
                    print(error.localizedDescription)
                    completionHandler(.failure(.couldNotParseJSON(rawError: error)))
                }
            }
        }
    }
}
