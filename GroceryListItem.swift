//
//  GroceryListItem.swift
//  GroceryList
//
//  Created by Matt Vuskovich on 9/19/24.
//

import Foundation
import SwiftData

@Model
class GroceryListItem {
    
    
    let title: String
    let subtitle: String
    let date: Date
    
    init(title: String, subtitle: String, date: Date) {
        self.title = title
        self.subtitle = subtitle
        self.date = date
    }
    
    
}
