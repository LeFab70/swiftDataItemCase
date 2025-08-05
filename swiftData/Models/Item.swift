//
//  Item.swift
//  swiftData
//
//  Created by Fabrice Kouonang on 2025-08-04.
//

import Foundation
import SwiftData

@Model
class Item{
    var name: String
    var details: String
    
    init(name: String, details: String) {
        self.name = name
        self.details=details
    }
}
