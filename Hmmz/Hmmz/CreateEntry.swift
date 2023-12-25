
//
//  CreateEntry.swift
//  Hmmz
//
//  Created by Muna Aiman Al-hajj on 11/06/1445 AH.
//

import SwiftUI

struct CreateEntry: View {
    @Environment(\.modelContext) private var modelContext
    
    @EnvironmentObject var entryController: EntryController
    @Environment(\.presentationMode) var presentationMode
    
    @State var title: String = ""
    @State var desc: String = ""
    @State var mood: String = ""
    
    @State private var entryMood = ""
    let entryMoods = ["Happy", "Natural", "Sad"]
    
    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("Title", text: $title)
                    
                    Picker("Mood:", selection: $entryMood) {
                        ForEach(entryMoods, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    TextEditor(text: $desc)
                       // .foregroundColor(.black)
                        .frame(height: 200)
                    
                        //Add TO SwiftData
                        var TextJournal = Drafts(timestamp: Date(), title: title, mood: mood, draft: desc)
                   // modelContext.insert(TextJournal)
                    
                    
                    
                }
                    Section {
                        Button(
                            action: {
                                self.entryController.createEntry(title: self.title, date: Date(), desc: self.desc, mood: self.entryMood)
                                self.presentationMode.wrappedValue.dismiss()
                            },
                            label: {
                                // NavigationLink(destination: NoteGallery()) {
                                // ButtonView()
                                
                                NavigationLink(destination: NoteGallery()) {
                                    Text("Save")
                                        .frame(width: 200, alignment: .center)
                                        .padding()
                                        .background(Color.orange1)
                                        .foregroundColor(Color.blue11)
                                        .cornerRadius(55)
                                }
                            }
                                    
                                    
                                    )
                                
                        
                    }
                }
            }
        }
    }


struct ButtonView: View {
    //let myCC = MyCustomColors();
    
    var body: some View {
     Text("")
        
    }
}

struct CreateEntry_Previews: PreviewProvider {
    static var previews: some View {
        CreateEntry()
    }
}
