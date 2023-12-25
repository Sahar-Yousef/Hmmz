
//
//  Item.swift
//  Hmmz
//
//  Created by Sahora on 24/12/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
