//
//  ContentView.swift
//  GroceryList
//
//  Created by Matt Vuskovich on 9/19/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var context
    @State var newItemString = ""
    
    @Query var items: [GroceryListItem]
    
    var body: some View {
        
        NavigationView{
            VStack {
                
                TextField("Add Item", text: $newItemString)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Save"){
                    
                    
                    guard !newItemString.isEmpty else {
                        
                        return
                    }
                    let newItem = GroceryListItem(title: newItemString, subtitle: "Do this ASAP", date: Date())
                    
                    context.insert(newItem)
                    
                    newItemString = ""
                }
                .padding()
                Text("Swipe left to delete item")
                    .foregroundColor(.secondary)
                
                List{
                    
                    ForEach(items) { item in
                        
                        Text(item.title)
                            .bold()
                        //Text(item.subtitle)
                        //Text(item.date.formatted())
                        
                        
                    }
                    
                    .onDelete { indexSet in
                        
                        indexSet.forEach({index in
                            
                            context.delete(items[index])
                            
                        })
                        
                        
                    }
                    
                    
                }
                .overlay {
                    if items.isEmpty {
                        Text("No items")
                    }
                }
            }
            .navigationTitle("Grocery List")
        }
        
    }
}

#Preview {
    ContentView()
}
