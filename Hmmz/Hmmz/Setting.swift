//
//  Setting.swift
//  Hmmz
//
//  Created by Muna Aiman Al-hajj on 11/06/1445 AH.
//


import SwiftUI

struct Setting: View {
    @State private var timeReminder = Date.now
    @State private var showTimePicker = true
    //@State private var tapCount = UserDefaults.standard.object(forKey: "Name")
   
    var body: some View {
        List {
            
            
            Toggle("Activate reminder", isOn: $showTimePicker)
            
            if showTimePicker {
                Button("Request Permission") {
                    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                        if success {
                            print("Permission aquired")
                        } else if let error = error {
                            print(error.localizedDescription)
                        }
                    }
                }
                
                DatePicker("Remind me at", selection: $timeReminder, displayedComponents: .hourAndMinute)

                Button(
                    action: {
                        let content = UNMutableNotificationContent()
                        content.title = "Good day!"
                        content.subtitle = "Time to record your daily journal entry."
                        content.sound = UNNotificationSound.default
                        
                        let calendar = Calendar.current
                        let hour = calendar.component(.hour, from: timeReminder)
                        let minute = calendar.component(.minute, from: timeReminder)
                        
                        var dateC = DateComponents()
                        dateC.hour = hour
                        dateC.minute = minute

                        // show this notification five seconds from now
                        let trigger =
                        UNCalendarNotificationTrigger(dateMatching: dateC, repeats: true)

                        // choose a random identifier
                        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                        // add our notification request
                        UNUserNotificationCenter.current().add(request)
                    },
                    label: {
                        Text("Schedule Reminder")
                           // .background(Color.babyblue)
                            .foregroundColor(Color.blue11)
                            .frame(
                                width: 200,
                                height: 40
                            )
                    }
                ).disabled(timeReminder == Date.now)
                    .background(Color.orange1.opacity(0.8))
                    .cornerRadius(8)
                    .padding([.top, .bottom], 16)
                    
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
          //  .environmentObject(User(name: "Username"))
    }
}

