//
//  ContentView.swift
//  Smoking Tracker
//
//  Created by Divyansh Bhardwaj on 22/09/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        VStack(alignment: .leading){
            TopBar()
            GraphView()
            JournalPreview()
            Spacer()
        }
        .padding(.top)
        .background(Color.BG)
    }
}


#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
