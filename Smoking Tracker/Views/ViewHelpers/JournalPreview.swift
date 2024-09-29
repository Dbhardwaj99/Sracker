//
//  JournalPreview.swift
//  Smoking Tracker
//
//  Created by Divyansh Bhardwaj on 29/09/24.
//

import SwiftUI

struct JournalPreview: View {
    var body: some View {
        ZStack{
            Rectangle()
                .background(Color.mygray)
                .shadow(color: Color.myPrimary, radius: 3, y: 6)
                .frame(width: UIScreen.screenWidth - 20, height: 100)
                .cornerRadius(8)
                .padding(.horizontal, 20)
            VStack(alignment: .leading, spacing: 5){
                Text("Your Motivation")
                    .padding(.horizontal, 25)
                    .padding(.top, 10)
                    .font(.title3)
                    .fontWeight(.bold)
                Text("I want to stop smoking because I want a better life for myself")
                    .padding(.horizontal, 25)
                    .font(.body)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                
                Text("You on 12/08/2024")
                    .padding(.horizontal, 25)
                    .padding(.vertical, 10)
                    .font(.caption)
            }
            .foregroundStyle(Color.black)
        }
    }
}

#Preview {
    JournalPreview()
}
