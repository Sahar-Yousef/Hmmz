
//
//  EntryDitail.swift
//  Hmmz
//
//  Created by Muna Aiman Al-hajj on 11/06/1445 AH.
//


import SwiftUI

struct EntryDetail: View {
    let entry: EntrySection
    
    var body: some View {
        
            VStack {
                ZStack{
                    Rectangle()
                        .frame(height: 100)
                        .offset(y:-20)
                        .foregroundColor(.vanella.opacity(0.4))
                    VStack{
                        Text(entry.title)
                        Text(entry.getDateString(date: entry.date))
                    }
                    .offset(y:-15)
                    .bold()
                    .font(.title2)
                }
                ScrollView{
                Text(entry.desc)
                    .padding(25)
                    .frame(width: 400)
                    .offset(y:-20)
                  //  .foregroundColor(.white)
            }
            // .navigationTitle(entry.title)
            // .navigationBarTitleDisplayMode(.automatic)
        }
        
    }
}

struct EntryDetail_Previews: PreviewProvider {
    static var previews: some View {
        EntryDetail(entry: EntrySection.example)
    }
}
