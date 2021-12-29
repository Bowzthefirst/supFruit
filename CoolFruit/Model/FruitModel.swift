//
//  FruitModel.swift
//  CoolFruit
//
//  Created by Alexander Bowser on 12/25/21.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
