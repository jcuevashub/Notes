//
//  NListView.swift
//  Notes
//
//  Created by Jackson Cuevas on 11/1/25.
//

import SwiftUI

struct NListView: View {
    
    @EnvironmentObject var appInfo: AppInfo
    
    @State var showBottomSheet: Bool = false
    @State var showDetails: Bool = false
    @State var selectedCard: NCard?
    var forFavorites: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(forFavorites ? appInfo.favorites : appInfo.cards) { card in
                    NCardView(card: card){
                        appInfo.toggleFavorite(card: card)
                    }
                    .onTapGesture {
                        selectedCard = card
                        showDetails = true
                    }
                }
            }.listStyle(.plain)
                .sheet(isPresented: $showBottomSheet) {
                    NCreateNoteView() { card in
                        appInfo.addCard(card: card)
                        showBottomSheet = false
                    }
                }.navigationDestination(isPresented: $showDetails) {
                    if let selectedCard {
                        NDetailView(card: selectedCard)
                    }
                }.navigationTitle("Notas")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.cyan.opacity(0.4), for: .navigationBar)
                .toolbar {
                    Button {
                        showBottomSheet = true
                    }label: {
                        Image(systemName: "plus")
                    }
                }
        }
    }
}

#Preview {
    NListView()
        .environmentObject(AppInfo())
}
