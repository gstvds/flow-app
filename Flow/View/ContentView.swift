//
//  ContentView.swift
//  Flow
//
//  Created by Gustavo Silva on 02/04/21.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedTab = 1
    @Environment(\.colorScheme) var colorScheme
    
    init () {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().barTintColor = UIColor.black
    }

    var body: some View {
        TabView {
            HomeTabView().tabItem {
                Image(systemName:  "house")
                    .font(.title)
            }
            SettingsView().tabItem {
                Image(systemName: "person")
                    .font(.title)
            }
        }
        .accentColor(colorScheme == .dark ? .white : .black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
