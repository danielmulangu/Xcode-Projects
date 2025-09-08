//
//  Item.swift
//  SecondProject
//
//  Created by Daniel Mulangu on 1/8/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
