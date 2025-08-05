//
//  ItemListView.swift
//  swiftData
//
//  Created by Fabrice Kouonang on 2025-08-04.
//

import SwiftUI
import SwiftData
struct ItemListView: View {
    @Query private var items: [Item]
    @Environment(\.modelContext) private var modelContext
    var body: some View {
       NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink(destination:EditItemView(item: item)) {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.details)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            .padding([.leading], 16)
                         }
                    }
                  
                }
                .onDelete(perform: {IndexSet in
                    for index in IndexSet {
                        self.modelContext.delete(self.items[index])
                    }
                })
            }
            .navigationBarTitle("List of items")
        }
    }
}

#Preview {
    ItemListView()
}
