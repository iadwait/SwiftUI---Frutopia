//
//  SettingsView.swift
//  Frutopia
//
//  Created by Adwait Barkale on 29/10/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var isPresented: Bool
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(label:
                                SettingsLabelView(lblTitle: "Frutopia", imgName: "info.circle"),
                             content: {
                        Divider().padding(.vertical, 4)
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .leading)
                                .cornerRadius(8)
                            
                            Spacer(minLength: 10)
                            
                            Text("Most fruits are natuarally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, fiber, vitamins and much more.")
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading) // If less text than it will not leave leading
                    })
                    // MARK: - SECTION 2
                    GroupBox(label: SettingsLabelView(lblTitle: "Customization", imgName: "paintbrush"), content: {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way on opening application you will see the onboarding process again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding, label: {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.secondary)
                            }
                        })
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                        )
                        
                    })
                    
                    // MARK: - SECTION 3
                    GroupBox(label: SettingsLabelView(lblTitle: "Application", imgName: "apps.iphone"), content: {
                        SettingsRowView(lblTitle: "Developer", lblValue: "Adwait")
                        SettingsRowView(lblTitle: "Designer", lblValue: "Robert Petras")
                        SettingsRowView(lblTitle: "Compatibility", lblValue: "iOS 15")
                        SettingsRowView(lblTitle: "Website", lblValue: "iAdwait", isValueLink: true, url: "https://iadwait.github.io/Personal-Site/")
                        SettingsRowView(lblTitle: "SwiftUI", lblValue: "5.0")
                        SettingsRowView(lblTitle: "Version", lblValue: "1.0.1")
                    })
                    
                    
                }
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    isPresented = false
                }, label: {
                    Image(systemName: "xmark")
                        .font(.system(size: 14, weight: .bold, design: .default))
                        .padding()
                        .background(.gray)
                        .frame(width: 30, height: 30, alignment: .center)
                        .cornerRadius(15)
                        .foregroundStyle(.white)
                })
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    @State static var isPresented = true
    
    static var previews: some View {
        // Wrap in a Group to ensure the view is used
        Group {
            SettingsView(isPresented: $isPresented)
                .preferredColorScheme(.light)
        }
    }
}
