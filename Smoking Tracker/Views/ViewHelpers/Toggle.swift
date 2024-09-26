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
                .foregroundColor(configuration.isOn ? .purple : .gray)
                            .frame(width: 80, height: 41, alignment: .center)
                            .overlay(
                                Text(configuration.isOn ? "Days" : "Weeks")
                                    .font(.system(size: configuration.isOn ? 16 : 13))
                                    .foregroundColor(.white)
                                    .offset(x: configuration.isOn ? -20 : 20)
                            )
                            .overlay(
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 40, height: 40)
                                    .offset(x: configuration.isOn ? 20 : -20)
                                    .animation(.linear, value: configuration.isOn)
                            )
                            .cornerRadius(20)
                            .onTapGesture { configuration.isOn.toggle() }
        }
    }
    
}
