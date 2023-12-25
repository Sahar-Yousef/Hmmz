

//
//  LocalNotifications.swift
//  Teshames
//
//  Created by Muna Aiman Al-hajj on 30/03/1445 AH.
//

import SwiftUI
import UserNotifications

class NotificationManager{
    
    static let instance = NotificationManager()
    func requestAuthrization(){
        let options : UNAuthorizationOptions = [.alert, .badge , .sound]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { success, error in
            if let error = error {
                print("ERROR: \(error)")
            } else{
                print ("SUCCESS")
            }
        }
    }
    
    func cancelNotification(){
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
    
}


enum NotificationAction: String {
    case dimiss
    case reminder
}

enum NotificationCategory: String {
    case general
}

class NotificationDelegate: NSObject, UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        let userInfo = response.notification.request.content.userInfo
        print(userInfo); completionHandler()
        
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .sound, .badge])
    }
    
}

struct LocalNotifications: View {
    var body: some View {
        VStack {
       
        }
    }
}
#Preview {
    LocalNotifications()
}
