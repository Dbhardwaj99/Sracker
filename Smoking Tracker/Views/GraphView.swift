//
//  GraphView.swift
//  Smoking Tracker
//
//  Created by Divyansh Bhardwaj on 25/09/24.
//

import SwiftUI

struct GraphView: View {
    var body: some View {
        Rectangle()
            .frame(width: 350, height: 400)
            .padding(.horizontal)
            .cornerRadius(20)
            .foregroundStyle(Color.gray)
    }
}

#Preview {
    GraphView()
}
