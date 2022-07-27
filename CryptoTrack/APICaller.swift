//
//  APICaller.swift
//  CryptoTrack
//
//  Created by Train2 on 29/4/2565 BE.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private struct Constants{
        //https://rest-sandbox.coinapi.io/v1/assets/?apikey=1B1726D2-E93C-4BCC-BE03-7AAADD54B769
        static let apiKey = "1B1726D2-E93C-4BCC-BE03-7AAADD54B769"
        static let assetsEndpoint = "https://rest.coinapi.io/v1/assets/"
    }
    
    private init() {}
        
        //MARK: - Public
        
        public func getAllCryptoData(completion: @escaping (Result<[Crypto], Error>) -> Void){
            guard let url = URL(string: Constants.assetsEndpoint + "?apikey=" + Constants.apiKey) else {
                return
            }
            let task = URLSession.shared.dataTask(with: url) { data, _, error in
                guard let data = data, error == nil else{
                    return
                }
                do{
                    //Decode response
                    let cryptos = try JSONDecoder().decode([Crypto].self, from: data)
                    
                    completion(.success(cryptos))
                }
                catch{
                    completion(.failure(error))
                }
            }
            task.resume()
    }
}
