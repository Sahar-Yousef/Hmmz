//
//  ContentView.swift
//  Hmmz
//
//  Created by Sahora on 19/12/2023.
//

import SwiftUI
import SwiftData

struct ContentView: View  {
    @Environment(\.modelContext) private var modelContext
 //   @Query private var items: [Item]
    @Query private var drafts: [Drafts]
    @Query private var countintervals: [CountIntervals]

    @State private var entredtext: String = ""
    @State private var Count: Int = 0
    @State private var CountText: String = ""

    var body: some View {

    
        NavigationSplitView {
            List {
                ForEach(drafts) { draft in
                    NavigationLink {
                        Text("\(draft.drafts))")
                    } label: {
                        Text("\(draft.drafts))")
                    }
                }
                .onDelete(perform: deleteItems)
            }
            List {
                ForEach(countintervals) { countinterval in
                    NavigationLink {
                        Text("\(countinterval.countIntervals))")
                    } label: {
                        Text("\(countinterval.countIntervals))")
                    }
                }
                .onDelete(perform: deleteItems)
            }

            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
        VStack {
            TextField("Enter text", text: $entredtext)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
        
        VStack {
            TextField("Enter text", text: $CountText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }

    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            let newNote = Drafts(timestamp: Date(), drafts: entredtext)
            let newCount = CountIntervals(timestamp: Date(), countIntervals: Count)
            modelContext.insert(newItem)
            modelContext.insert(newNote)
            modelContext.insert(newCount)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
               // modelContext.delete(items[index])
            }
        }
    }
    

    
    
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
