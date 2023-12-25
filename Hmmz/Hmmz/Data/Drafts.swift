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
    var title: String
    var mood: String
    var draft: String

    init(timestamp: Date, title:String, mood: String, draft: String) {
        self.timestamp = timestamp
        self.title = title
        self.mood = mood
        self.draft = draft
    }
    
}
