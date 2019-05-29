//
//  Product.swift
//  SkyLodjinha
//
//  Created by TI Corporativa on 28/05/19.
//  Copyright © 2019 TI Corporativa. All rights reserved.
//

import Foundation

struct ProductResult : Codable {
    var data: [Product]?
}

struct Product: Codable {
    var id: Int?
    var category: Category?
    var description: String?
    var name: String?
    var oldPrice: Double?
    var price: Double?
    var urlImage: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case category = "cateogria"
        case name = "nome"
        case description = "descricao"
        case price = "precoPor"
        case oldPrice = "precoDe"
        case urlImage = "urlImage"
    }
}
