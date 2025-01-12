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
        NListView()
            .environmentObject(appinfo)
    }
}

#Preview {
   ContentView()
}
