
//
//  ContentView.swift
//  HMMZ refrence file
//
//  Created by zainab hawsa on 08/06/1445 AH.
//

import SwiftUI

struct Home: View {
    @ObservedObject var stopwatchViewModel = StopwatchViewModel()
    var body: some View {
        NavigationView{
            VStack {
                ZStack() {
                    
                    ZStack() {
                        HStack(spacing: -44){
                            NavigationLink(destination:NoteGallery()) {
                                Image(systemName:"calendar")
                            }
                            .font(Font.custom("SF Pro Display", size: 30))
                            .foregroundColor(.blue11)
                            .offset(x: -160.50, y: -352.50)
                            .accessibilityLabel("Go to Calendar")
                            NavigationLink(destination: Setting()) {
                                Image(systemName:"ellipsis.circle")
                            }
                            .font(Font.custom("SF Pro Display", size: 30))
                            .foregroundColor(.blue11)
                            .offset(x: 158, y: -352.50)
                            .accessibilityLabel("Go to Settings")
                            
                        }
                        
                        HStack(spacing: 0) {
                            Text("Interval Control")
                            //.bold()
                                .font(.title)
                               // .font(Color)
                                .bold()
                               // .foregroundColor(.white)
                                .frame(width: 1050)
                                .offset(x: 45)
                        }
                        .frame(width: 104, height: 24)
                        .offset(x: -120.50, y: -291)
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 345, height: 55)
                                .background(Color(red: 1, green: 0.73, blue: 0.45))
                                .cornerRadius(8)
                                .offset(x: 0, y: 0)
                            VStack {
                                // Label to display the stopwatch time
                                Text(stopwatchViewModel.formattedElapsedTime())
                                    .font(Font.custom("SF Compact", size: 30).bold())
                                    .offset(y: -124)
                                // Button to start and stop the stopwatch
                                Button(action: {
                                    self.stopwatchViewModel.startStop()
                                    
                                })
                                {
                                    Text(stopwatchViewModel.stopwatchTimer == nil ? "Start calculating interval" : "Stop calculating interval")
                                        .font(Font.custom("SF Compact", size: 20).bold())
                                        .foregroundColor(.white)
                                        .frame(width: 700)
                                        .offset(x: 55)
                                        .frame(width: 700, height: 40)
                                        .offset(x: -39.50, y: 0)
                                    
                                }
                                .frame(height: 55)
                                .offset(y : -23)
                                .accessibilityLabel("Calculate Interval")
                            }
                            .frame(width: 700)
                            
                            HStack(spacing: 0) {
                                
                            }
                            .frame(width: 104, height: 24)
                            .offset(x: -39.50, y: 0.50)
                            Image(systemName:"play.circle")
                                .font(Font.custom("SF Pro Display", size: 24))
                                .foregroundColor(.white)
                                .offset(x: -111.50, y: 0.50)
                        }
                        .frame(width: 345, height: 55)
                        .offset(x: 0, y: 3.50)
                        
                        HStack(spacing: 0) {
                            Text("Start Journaling")
                                .font(Font.custom("SF Compact", size: 24).bold())
                                //.foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                                .frame(width: 300)
                                .offset(x: 40)
                        }
                        .frame(width: 87, height: 19)
                        .offset(x: -129, y: 80.50)
                        ZStack() {
                            NavigationLink(destination: CreateEntry()) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 163, height: 100)
                                    .background(Color(red: 0.95, green: 0.95, blue: 0.97))
                                    .cornerRadius(8)
                                    .offset(x: 0, y: 0)
                            }.buttonStyle(MainButton())
                            
                            Text("Write Memo")
                                .font(Font.custom("SF Pro Display", size: 16))
                                .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                                .offset(x: 0, y: 19)
                        }
                        .frame(width: 163, height: 100)
                        .offset(x: -91, y: 276)
                        
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 163, height: 100)
                                .background(Color(red: 0.95, green: 0.95, blue: 0.97))
                                .cornerRadius(8)
                                .offset(x: 0, y: 0)
                            Text("Record Memo")
                                .font(Font.custom("SF Pro Display", size: 16))
                                .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                                .offset(x: 0, y: 19)
                        }
                        .frame(width: 163, height: 100)
                        .offset(x: 91, y: 276)
                        ZStack() {
                            NavigationLink(destination: Camera()){
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 345, height: 100)
                                    .background(Color(red: 0.95, green: 0.95, blue: 0.97))
                                    .cornerRadius(8)
                                    .offset(x: 0, y: 0)
                            }
                            Text("Open Camera")
                                .font(Font.custom("SF Pro Display", size: 16))
                                .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                                .offset(x: 0, y: 19)
                        }
                        .frame(width: 345, height: 100)
                        .offset(x: 0, y: 164)
                        .accessibilityLabel("Open camera")
                        
                        Group {
                            Circle()
                                .stroke(lineWidth: 13)
                                .frame(width: 182, height: 182)
                                .foregroundColor(Color(red: 1, green: 0.90, blue: 0.53))
                                .offset(x: 0.50, y: -155)
                            /* .foregroundColor(.clear)
                             .frame(width: 182, height: 182)
                             .background(Color(red: 1, green: 0.90, blue: 0.53))
                             .offset(x: 0.50, y: -166)*/
                            /* HStack(spacing: 0) {
                             Text("00:00:00")
                             .font(Font.custom("SF Pro Display", size: 25))
                             .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                             }
                             .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 25))
                             .frame(width: 151, height: 30)
                             .offset(x: 3, y: -166)*/
                            Image(systemName:"camera")
                                .font(Font.custom("SF Pro Display", size: 24))
                                .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                                .offset(x: 0, y: 146.50)
                            Image(systemName:"waveform")
                                .font(Font.custom("SF Pro Display", size: 24))
                                .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                                .offset(x: 91.50, y: 262.50)
                            Image(systemName:"note.text")
                                .font(Font.custom("SF Pro Display", size: 24))
                                .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                                .offset(x: -90.50, y: 262.50)
                        }
                    }
                    .frame(width: 393, height: 852)
                    //   .background(Color(red: 0.95, green: 0.95, blue: 0.97))//ZStack
                    
                }
                .padding()
            }
        }
    }
   
}

struct MainButton: ButtonStyle {
   // let myCC = MyCustomColors();
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
          //  .padding()
         //   .background(Color.babyblue)
         //   .foregroundColor(Color.blue11)
         //   .cornerRadius(12)
    }
}

#Preview {
    Home()
}
