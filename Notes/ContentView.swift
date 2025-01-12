//
//  ContentView.swift
//  Notes
//
//  Created by Jackson Cuevas on 10/1/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var appinfo: AppInfo = AppInfo()
    
    var body: some View {
        TabView {
            NListView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            NListView(forFavorites: true)
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
        }.environmentObject(appinfo)
    }
}

#Preview {
    ContentView()
}
