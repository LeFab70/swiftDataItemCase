//
//  swiftDataApp.swift
//  swiftData
//
//  Created by Fabrice Kouonang on 2025-08-04.
//

import SwiftUI
import SwiftData
@main
struct swiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for :Item.self) 
    }
}
