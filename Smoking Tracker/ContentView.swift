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
        VStack{
            HStack{
                VStack{
                    HStack{
                        Text("Good Morning!")
                            .fontWeight(.regular)
                            .font(.headline)
                            .fontDesign(.default)
                        Spacer()
                    }
                    HStack{
                        Text("Divyansh Bhardwaj")
                            .fontWeight(.heavy)
                            .bold()
                            .font(.title)
                            .fontDesign(.default)
                            .minimumScaleFactor(0.01)
                            .lineLimit(1)
                            
                        Spacer()
                    }
                }
                .padding(.leading)
                
                Text("Toggle Here")
                    .font(.largeTitle)
                    .padding(.trailing)
            }
            Spacer()
        }
        .padding(.top)
    }
}


#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
