//
//  NoteGallery.swift
//  Hmmz
//
//  Created by Muna Aiman Al-hajj on 11/06/1445 AH.
//

//
//  ContentView.swift
//  JournalApp
//
//  Created by Kathrine Heinzel on 20.12.21.
//

import SwiftUI

struct NoteGallery: View {
   // @EnvironmentObject var entryUser: User
    @EnvironmentObject var entryController: EntryController
  //  var myCustomColor = MyCustomColors()
    
    var body: some View {
        VStack{
            NavigationView {
                VStack(alignment: .leading) {
                   
                    
                    // Entries
                    List{
                        ForEach(entryController.entries.reversed()) { section in
                            NavigationLink( destination: EntryDetail(entry: section).navigationBarBackButtonHidden(true)){
                                EntryRow(item: section)
                            }
                        }
                        .onDelete(perform: deleteItems)
                        .padding([.top, .bottom], 5)
                        .listRowBackground(Color.white)
                    }
                    .background(Color.white)
                    //.navigationTitle("Journal")
                    .listStyle(GroupedListStyle())
                    .toolbar {
                        EditButton()
                    }
                }
            }
            .background(Color.white)
        }
        .padding()
        .background(Color.white)
    }
    
    func deleteItems(at offsets: IndexSet) {
        entryController.entries.remove(atOffsets: offsets)
    }
}


struct NoteGallery_Preview: PreviewProvider {
    static var previews: some View {
        NoteGallery()
            .environmentObject(EntryController())
         //   .environmentObject(User(name: "Visitor"))
    }
}
