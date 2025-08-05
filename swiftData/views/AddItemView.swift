//
//  AddItemView.swift
//  swiftData
//
//  Created by Fabrice Kouonang on 2025-08-04.
//

import SwiftUI

struct AddItemView: View {
    @State private var itemName: String = ""
    @State private var itemDescription: String = ""
    @Binding var selectedTab: Int
    @Environment(\.modelContext) private var modelContext
    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Item Information")){
                    TextField("Item Name", text: $itemName)
                    TextField("Item Description", text: $itemDescription)
                    
                }
                Button(action:addItem){
                    Text("Add Item")
                }
                .disabled(itemName.isEmpty || itemDescription.isEmpty)
               
                
            }
        }
    }
    func addItem(){
        let newItem=Item(name: itemName, details: itemDescription)
        modelContext.insert(newItem)
        self.selectedTab = 0
        self.itemName = ""
        self.itemDescription = ""
    }
}

#Preview {
    AddItemView(selectedTab: .constant(0))
}
