//
//  Lending.swift
//  SkyFirstApp
//
//  Created by user155531 on 5/15/19.
//  Copyright © 2019 sky. All rights reserved.
//

import Foundation

struct Lending: Codable, Comparable, Hashable {
    static func < (lhs: Lending, rhs: Lending) -> Bool {
        return lhs.date < rhs.date
    }
    
    let name: String
    let object: String
    let date: Date
}
