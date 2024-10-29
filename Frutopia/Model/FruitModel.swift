//
//  FruitModel.swift
//  Frutopia
//
//  Created by Adwait Barkale on 28/10/24.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct FruitDataModel: Identifiable { // Identifiable for fruitsData[0...5] iteration in foreach
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
