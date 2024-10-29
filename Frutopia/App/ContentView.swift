//
//  ContentView.swift
//  Frutopia
//
//  Created by Adwait Barkale on 28/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented = false
    var fruitsData: [FruitDataModel]
    
    var body: some View {
        NavigationView {
            List {
                //fruitsData.shuffled()
                ForEach(fruitsData) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                Button(action: {
                    isPresented = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })
                .sheet(isPresented: $isPresented, content: {
                    SettingsView(isPresented: $isPresented)
                })
            )
            .listStyle(.plain)
            .background(Color.white.opacity(0.3))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView(fruitsData: fruitsData)
}
