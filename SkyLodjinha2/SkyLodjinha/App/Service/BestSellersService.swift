//
//  BestSellersService.swift
//  SkyLodjinha
//
//  Created by TI Corporativa on 28/05/19.
//  Copyright © 2019 TI Corporativa. All rights reserved.
//

import Foundation
import Result
import Moya

protocol BestSellersServiceDelegate {
    func getBestSellers(_ completion: @escaping (Result<[Product]?, MoyaError>) -> Void)
}

class BestSellersService: BestSellersServiceDelegate {
    
    static let instance = BestSellersService()
    let provider = MoyaProvider<BestSellersTargetType>()
    var bestSellers: [Product]?
    
    func getBestSellers(_ completion: @escaping (Result<[Product]?, MoyaError>) -> Void) {
        let targetType = BestSellersTargetType.getBestSellers
        provider.request(targetType) {
            (result) in
            switch result {
            case .success(let response) :
                switch response.statusCode {
                case 200..<300:
                    do {
                        let bestSellersResult = try JSONDecoder().decode(ProductResult.self, from: response.data)
                        self.bestSellers = bestSellersResult.data
                        completion(.success(bestSellersResult.data))
                    } catch {
                        completion(.failure(MoyaError.jsonMapping(response)))
                    }
                    break
                default:
                    completion(.failure(MoyaError.jsonMapping(response)))
                    break
                }
                break
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    
}
