//
//  Entry.swift
//  Hmmz
//
//  Created by Muna Aiman Al-hajj on 11/06/1445 AH.
//

import SwiftUI

struct EntrySection: Codable, Identifiable, Equatable {
    var id = UUID()
    var title: String
    let date: Date
    var desc: String
    var mood: String
    
    init(title: String, date: Date, desc: String, mood: String) {
        self.title = title
        self.date = date
        self.desc = desc
        self.mood = mood
    }
    
    func getDateString(date: Date) -> String {
        var dateString: String = "";
        let dateFormatter = DateFormatter()
        
        // Format date for output
        dateFormatter.dateFormat = "MMM d"
        dateString = dateFormatter.string(from: date)
        
        return dateString
    }
    
#if DEBUG
    static let example = EntrySection(title: "Maple French Toast", date: Date(), desc: "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Maple City, Canada, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…", mood: "Happy")
#endif
}

enum Mood: String, Codable {
    case happy, ok, sad
    
    func getMood() -> String {
        switch self {
        case .happy:
            return "1F60A"
        
        case .ok:
            return "1F610"
            
        case .sad:
            return "2639"
        }
    }
}
