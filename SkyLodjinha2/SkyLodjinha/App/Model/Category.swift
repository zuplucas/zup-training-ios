//
//  Category.swift
//  SkyLodjinha
//
//  Created by TI Corporativa on 28/05/19.
//  Copyright © 2019 TI Corporativa. All rights reserved.
//

import Foundation

struct CategoryResult : Codable {
    var data: [Category]?
}

struct Category: Codable {
    var id:Int?
    var descricao: String?
    var urlImagem: String?
}
