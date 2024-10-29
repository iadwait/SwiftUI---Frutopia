//
//  FruitRowView.swift
//  Frutopia
//
//  Created by Adwait Barkale on 28/10/24.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: FruitDataModel
    
    var body: some View {
        VStack {
            HStack {
                Image(fruit.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80, alignment: .center)
                    .shadow(color: .black, radius: 5, x: 0.0, y: 0.0)
                    .background(
                        LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                            .cornerRadius(10)
                    )
                
                VStack(alignment: .leading,spacing: 6 , content: {
                    Text(fruit.title)
                        .font(.system(size: 18, weight: .bold, design: .default))
                    Text(fruit.headline)
                        .font(.system(size: 12, weight: .semibold, design: .default))
                        .foregroundStyle(.gray)
                        .lineLimit(nil) // Allow multiple lines
                        .fixedSize(horizontal: false, vertical: true) // Allow the text to take up as much vertical space as needed
                })
            }
        }
        //.padding(.horizontal, 10)
        //.padding(.vertical, 10)
        //.background(.colorLimeLight)
        //.cornerRadius(20)
    }
    
}

#Preview {
    List {
        FruitRowView(fruit: fruitsData[0])
    }
}
