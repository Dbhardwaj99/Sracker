//
//  GraphView.swift
//  Smoking Tracker
//
//  Created by Divyansh Bhardwaj on 25/09/24.
//

import SwiftUI
import Charts
import UIKit

struct GraphView: View {
    var body: some View {
        VStack(spacing: -40){
            ZStack {
                Circle()
                    .trim(from: 0.0, to: 0.7)
                    .stroke(
                        Color.myTertiary,
                        style: StrokeStyle(lineWidth: 15, lineCap: .round)
                    )
                    .frame(width: UIScreen.screenWidth  * 0.7, height: UIScreen.screenHeight * 0.5)
                    .rotationEffect(.degrees(-215))
                Circle()
                    .trim(from: 0.0, to: CGFloat(75) / (100 / 0.7))
                    .stroke(
                        Color.mySecondary,
                        style: StrokeStyle(lineWidth: 15, lineCap: .round)
                    )
                    .frame(width: UIScreen.screenWidth  * 0.7, height: UIScreen.screenHeight * 0.5)
                    .rotationEffect(.degrees(-215))
                Circle()
                    .trim(from: 0.0, to: CGFloat(45) / (100 / 0.7))
                    .stroke(
                        Color.myPrimary,
                        style: StrokeStyle(lineWidth: 15, lineCap: .round)
                    )
                    .frame(width: UIScreen.screenWidth  * 0.7, height: UIScreen.screenHeight * 0.5)
                    .rotationEffect(.degrees(-215))
                VStack{
                    HStack{
                        Image(systemName: "arrow.down")
                            .foregroundStyle(Color.myPrimary)
                            .frame(width: 3, height: 3)
                        Text("-23.3%")
                            .foregroundStyle(Color.myPrimary)
                            .font(.system(size: 12))
                    }
                    Text("90")
                        .foregroundStyle(Color.myPrimary)
                        .font(.system(size: 60))
                        .fontWeight(.bold)
                        .padding(.horizontal)
                }
            }
            .frame(width: UIScreen.screenWidth, height: 300)
            HStack{
                VStack(alignment: .leading){
                    Text("This Week")
                        .font(.system(size: 12))
                    Text("90 mg/g")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                }
                .foregroundStyle(Color.myPrimary)
                .alignmentGuide(.firstTextBaseline) { $0[.firstTextBaseline] }
                Divider().frame(width: 1)
                VStack(alignment: .leading){
                    Text("Previous Week")
                        .font(.system(size: 12))
                    Text("120 mg/g")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                }
                .foregroundStyle(Color.mySecondary)
                .alignmentGuide(.firstTextBaseline) { $0[.firstTextBaseline] }
            }
            .frame(height: 60)
            .padding(.horizontal, 90)
        }
    }
}

#Preview {
    GraphView()
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
