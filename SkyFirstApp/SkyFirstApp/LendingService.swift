//
//  LendingService.swift
//  SkyFirstApp
//
//  Created by user155531 on 5/15/19.
//  Copyright © 2019 sky. All rights reserved.
//

import Foundation

enum LendingServiceKey: String {
    case LENDING_KEY = "LENDINGS"
}
class LendingService {
    
    static let instance = LendingService()
    
    var lendings: [Lending] {
        get {
            return getValues()
        }
        set {
            set(lendings: newValue)
        }
    }

    
    
    private func set(lendings: [Lending]) {
        let lendingData = try? JSONEncoder().encode(lendings)
        UserDefaults.standard.set(lendingData, forKey: LendingServiceKey.LENDING_KEY.rawValue)
    }
    
    private func getValues() -> [Lending] {
        guard let lendingData = UserDefaults.standard.value(forKey: LendingServiceKey.LENDING_KEY.rawValue) as! Data?,
            let lendings = try? JSONDecoder().decode([Lending].self, from: lendingData)
            else {
                return []
        }
        return lendings
    }
    
}
