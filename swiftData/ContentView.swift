//
//  ContentView.swift
//  swiftData
//
//  Created by Fabrice Kouonang on 2025-08-04.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        TabView(selection:$selectedTab) {
            ItemListView()
               .tabItem {
                   Label("Items", systemImage: "list.bullet")
               }
               .tag(0)
           
            AddItemView(selectedTab: $selectedTab)
               .tabItem {
                   Label("Add Item", systemImage: "plus.circle")
               }
               .tag(1)
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
