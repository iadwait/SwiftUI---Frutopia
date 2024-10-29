//
//  FruitNutrientsView.swift
//  Frutopia
//
//  Created by Adwait Barkale on 29/10/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: FruitDataModel
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(nutrients.indices, id: \.self) { index in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                                .font(.system(size: 16, weight: .regular, design: .default))
                        }
                        .foregroundStyle(.blue)
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[index])
                            .font(.system(size: 16, weight: .regular, design: .default))
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            .font(.title3)
        }
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
}
