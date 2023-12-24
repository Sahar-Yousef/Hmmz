//
//  CountIntervals.swift
//  Hmmz
//
//  Created by Sahora on 24/12/2023.
//

import Foundation
import SwiftData

@Model
final class CountIntervals {
    var timestamp: Date
    var countIntervals: Int

    init(timestamp: Date, countIntervals : Int ) {
        self.timestamp = timestamp
        self.countIntervals = countIntervals
    }
    

}
