//
//  EntryRow.swift
//  Hmmz
//
//  Created by Muna Aiman Al-hajj on 11/06/1445 AH.
//


import SwiftUI

struct EntryRow: View {
    let item: EntrySection
   // var myCustomColor = MyCustomColors()
    
   // @AppStorage ("item"): var EntryRow: Bool = false
    
    var body: some View {
        
        HStack {
            
            VStack(alignment: .leading) {
                HStack{
                    VStack {
                        Text(item.getDateString(date: item.date))
                            .font(.system(size: 15))
                            .padding()
                            .bold()
                            .background(Color.babyblue)
                            .foregroundColor(.blue11)
                            .cornerRadius(7)
                        Text(item.mood)
                            .font(.system(size: 15))
                            .bold()
                            .foregroundColor(.orange1)
                        
                    }
                    .padding(10)
                    
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.headline)
                            .bold()
                        Text(item.desc)
                            .frame(height: 50)
                            .truncationMode(.tail)
                            .font(.caption2)
                            .offset(y:-10)
                    }
                    .foregroundColor(.blue11)
                  
                }
            }
            
        }
        
    }
}


struct EntryRow_Previews: PreviewProvider {
    static var previews: some View {
        EntryRow(item: EntrySection.example)
    }
}

