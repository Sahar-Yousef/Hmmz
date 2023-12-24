//
//  Timer.swift
//  HMMZ refrence file
//
//  Created by zainab hawsa on 08/06/1445 AH.
//

import Foundation
class StopwatchViewModel: ObservableObject {
    
    // MARK: - Properties
    
    // Timer object to track elapsed time
    var stopwatchTimer: Timer?
    
    // Variable to keep track of elapsed time
    @Published var elapsedTime: TimeInterval = 0
    
    // MARK: - Public Methods
    
    func startStop() {
        // If the timer is running, stop it
        if let timer = stopwatchTimer {
            timer.invalidate()
            stopwatchTimer = nil
            elapsedTime = 0
        } else {
            // Start the timer
            stopwatchTimer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { [weak self] timer in
                // Update the elapsed time
                self?.elapsedTime += timer.timeInterval
            })
        }
    }
    
    func formattedElapsedTime() -> String {
        // Format the elapsed time as a stopwatch time
        let totalSeconds = Int(elapsedTime)
            let hours = totalSeconds / 3600
            let minutes = (totalSeconds % 3600) / 60
            let seconds = totalSeconds % 60

        
        // Return the formatted time
        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    }
}
