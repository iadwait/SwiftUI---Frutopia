//
//  SettingsRowView.swift
//  Frutopia
//
//  Created by Adwait Barkale on 29/10/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    var lblTitle: String
    var lblValue: String?
    var isValueLink: Bool = false
    var url: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(lblTitle)
                    .foregroundStyle(.gray)
                Spacer()
                if isValueLink && url != nil && lblValue != "", let safeURL = URL(string: url ?? "") {
                    Link(lblValue ?? "", destination: safeURL)
                        .font(.system(size: 18, weight: .semibold, design: .default))
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.pink)
                }
                else if lblValue != "" {
                    Text(lblValue ?? "")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                } else {
                    EmptyView()
                }
            }
        }
        
    }
}

#Preview {
    List {
        SettingsRowView(lblTitle: "Title", lblValue: "Google", isValueLink: true, url: "www.google.com")
    }
}
