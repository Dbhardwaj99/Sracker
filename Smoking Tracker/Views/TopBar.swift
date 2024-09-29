//
//  TopBar.swift
//  Smoking Tracker
//
//  Created by Divyansh Bhardwaj on 25/09/24.
//

import SwiftUI

struct TopBar: View {
    @State private var isDayOn:Bool = true
    var body: some View {
        HStack(){
            VStack(alignment: .leading){
                HStack{
                    Text("Good Morning!")
                        .fontWeight(.regular)
                        .font(.title3)
                        .minimumScaleFactor(0.01)
                        .lineLimit(1)
                        .padding(.leading)
                        .foregroundStyle(Color.black)
                }
                HStack{
                    Text("Divyansh Bhardwaj")
                        .fontWeight(.heavy)
                        .font(.title2)
                        .minimumScaleFactor(0.01)
                        .lineLimit(1)
                        .padding(.leading)
                        .foregroundStyle(Color.black)
                }
            }
                
            Spacer()
            Toggle("", isOn: $isDayOn)
                .toggleStyle(isDayToggle())
                .padding(.horizontal, 10)
        }
    }
}

#Preview {
    TopBar()
}
