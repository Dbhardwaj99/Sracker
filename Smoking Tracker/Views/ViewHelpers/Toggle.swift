//
//  Toggle.swift
//  Smoking Tracker
//
//  Created by Divyansh Bhardwaj on 23/09/24.
//

import Foundation
import SwiftUI

struct isDayToggle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Rectangle()
                .foregroundColor(
                    configuration.isOn ? Color.myPrimary : Color.mygray
                )
                            .frame(width: 90, height: 41, alignment: .center)
                            .overlay(
                                Text(configuration.isOn ? "Days" : "Weeks")
                                    .font(
                                        .system(
                                            size: configuration.isOn ? 16 : 13
                                        )
                                    )
                                    .fontWeight(.bold)
                                    .foregroundColor(
                                        configuration.isOn ? .white : .black
                                    )
                                    .offset(x: configuration.isOn ? -20 : 20)
                            )
                            .overlay(
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 40, height: 40)
                                    .offset(x: configuration.isOn ? 25 : -25)
                                    .animation(.linear, value: configuration.isOn)
                            )
                            .border(Color.gray, width: 0.1)
                            .cornerRadius(20)
                            .onTapGesture { configuration.isOn.toggle() }
        }
    }
    
}
