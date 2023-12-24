
//
//  Memo Preview.swift
//  HMMZ refrence file
//
//  Created by zainab hawsa on 08/06/1445 AH.
//

import SwiftUI

struct Memo_Preview: View {
    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 393, height: 120)
                .background(Color(red: 0.55, green: 0.75, blue: 0.95))
                .offset(x: 0, y: -366)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 345, height: 524)
                .background(.white)
                .cornerRadius(8)
                .offset(x: 0, y: -13)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 310, height: 339)
                .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/310x339"))
                )
                .cornerRadius(8)
                .offset(x: 0.50, y: -76.50)
            Text("⁠Embark on a journey to uncover the untapped potential between everyday moments! T")
                .font(Font.custom("SF Compact", size: 20))
                .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                .frame(width: 318)
                .offset(x: 0.50, y: 167)
          
            Image(systemName:"chevron.backward")
                .font(Font.custom("SF Pro Display", size: 24))
                .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                .offset(x: -161.50, y: -348.50)
            HStack(spacing: 0) {
                Text("Happy Journey")
                    .font(Font.custom("SF Pro Display", size: 25))
                    .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                    .frame(width: 318)
            }
            .padding(EdgeInsets(top: 0, leading: 1, bottom: 0, trailing: 1))
            .frame(width: 161, height: 30)
            .offset(x: 0, y: -349)
            HStack(spacing: 0) {
                Text("Dec 19, 2023")
                    .font(Font.custom("SF Compact", size: 16))
                    .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                    .frame(width: 318)
            }
            .padding(EdgeInsets(top: 0, leading: 2, bottom: 0, trailing: 2))
            .frame(width: 96, height: 19)
            .offset(x: 0.50, y: -323.50)
            Image(systemName:"square.and.arrow.up")
                .font(Font.custom("SF Pro Display", size: 24))
                .foregroundColor(Color(red: 0.17, green: 0.26, blue: 0.36))
                .offset(x: 162, y: -348.50)
        }
        .frame(width: 393, height: 852)
        .background(Color(red: 0.95, green: 0.95, blue: 0.97))

    }
}

#Preview {
    Memo_Preview()
}
