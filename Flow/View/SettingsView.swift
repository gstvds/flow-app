//
//  SettingsView.swift
//  Flow
//
//  Created by Gustavo Silva on 02/04/21.
//

import SwiftUI

struct SettingsView: View {
    @State private var notifications = false
    @State private var appleHeath = false
    @State private var metronome = false
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            List {

                Text("Sessions")
                    .font(.title2)
                    .bold()
                    .padding(.top, 15)
                Section {
                    ButtonSettingsCell(title: "Flow Duration", color: colorScheme == .dark ? .white : .black, hasIcon: true)
                    ButtonSettingsCell(title: "Break Duration", color: colorScheme == .dark ? .white : .black, hasIcon: true)
                } //: SessionsSection

                Text("General")
                    .font(.title2)
                    .bold()
                    .padding(.top, 15)
                Section {
                    ToggleSettingsCell(title: "Notifications", imageName: "bell", color: colorScheme == .dark ? .white : .black, isOn: notifications)
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                    ToggleSettingsCell(title: "Apple Health", imageName: "heart.fill", color: colorScheme == .dark ? .white : .black, isOn: appleHeath)
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                    ToggleSettingsCell(title: "Metronome", imageName: "metronome", color: colorScheme == .dark ? .white : .black, isOn: metronome)
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                } //: GeneralSection

                Text("About")
                    .font(.title2)
                    .bold()
                    .padding(.top, 15)
                Section {
                    ButtonSettingsCell(title: "About us", color: colorScheme == .dark ? .white : .black, hasImage: true, imageName: "exclamationmark.circle", hasIcon: true)
                    ButtonSettingsCell(title: "How it works", color: colorScheme == .dark ? .white : .black, hasImage: true, imageName: "questionmark.circle")
                    ButtonSettingsCell(title: "Recommend", color: colorScheme == .dark ? .white : .black, hasImage: true, imageName: "hand.thumbsup")
                    ButtonSettingsCell(title: "Rate the App", color: colorScheme == .dark ? .white : .black, hasImage: true, imageName: "star")
                } //: AboutSection
            } //: List
            .environment(\.horizontalSizeClass, .regular)
            .navigationBarTitle("Settings")
        } //: NavigationView
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
