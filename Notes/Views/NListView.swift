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

    var body: some View {
        NavigationStack {
            List {
                ForEach(appInfo.cards) { card in
                    NCardView(card: card)
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
                }.overlay {
                    VStack {
                        Spacer()
                        Button("Crear Nota") {
                            showBottomSheet = true
                        }
                    }
                }.navigationDestination(isPresented: $showDetails) {
                    if let selectedCard {
                        NDetailView(card: selectedCard)
                    }
            }
        }
    }
}

#Preview {
    NListView()
        .environmentObject(AppInfo())
}
