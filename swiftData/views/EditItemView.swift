//
//  EditItemView.swift
//  swiftData
//
//  Created by Fabrice Kouonang on 2025-08-04.
//

import SwiftUI

struct EditItemView: View {
    @Bindable var item: Item
    @Environment(\.dismiss) var dismiss
    var body: some View {
      Form {
          Section(header: Text("Edit Item")) {
              TextField("Name", text: $item.name)
              TextField("Details", text: $item.details)
          }
       Button("Save") {
              dismiss()
          }
           
        }
    }
}

//#Preview {
  // EditItemView(item:.init(backingData: .init(for: <#Item.Type#>)))
//}
