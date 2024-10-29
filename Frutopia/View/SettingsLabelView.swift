//
//  SettingsLabelView.swift
//  Frutopia
//
//  Created by Adwait Barkale on 29/10/24.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var lblTitle: String
    var imgName: String
    
    var body: some View {
        HStack {
            Text(lblTitle).textCase(.uppercase)
            Spacer()
            Image(systemName: imgName)
        }
    }
}

#Preview {
    List {
        SettingsLabelView(lblTitle: "Frutopia", imgName: "info.circle")
    }
}
