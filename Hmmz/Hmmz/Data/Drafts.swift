//
//  Drafts.swift
//  Hmmz
//
//  Created by Sahora on 24/12/2023.
//

import Foundation
import SwiftData

@Model
final class Drafts {
    var timestamp: Date
    var draft: String

    init(timestamp: Date, draft: String) {
        self.timestamp = timestamp
        self.draft = draft
    }
    
}
