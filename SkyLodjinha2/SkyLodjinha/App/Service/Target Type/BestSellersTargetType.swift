//
//  BestSellersTargetType.swift
//  SkyLodjinha
//
//  Created by TI Corporativa on 28/05/19.
//  Copyright © 2019 TI Corporativa. All rights reserved.
//

import Foundation
import Moya
import Result

enum BestSellersTargetType {
    case getBestSellers
}

extension BestSellersTargetType : TargetType {
    var baseURL: URL {
        return URL(string: "https://alodjinha.herokuapp.com")!
    }
    
    var path: String {
        switch self {
        case .getBestSellers: return "/product/maisvendidos/"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getBestSellers: return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .getBestSellers:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .getBestSellers:
            return nil
        }
    }
    
    
}
