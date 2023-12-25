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
    var countIntervals: Double

    init(timestamp: Date, countIntervals : Double ) {
        self.timestamp = timestamp
        self.countIntervals = countIntervals
    }
    

}
