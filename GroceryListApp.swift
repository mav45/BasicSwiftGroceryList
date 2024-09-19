//
//  GroceryListApp.swift
//  GroceryList
//
//  Created by Matt Vuskovich on 9/19/24.
//

import SwiftUI
import SwiftData

@main
struct GroceryListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            
                
        }
        .modelContainer(for: GroceryListItem.self)
    }
}
