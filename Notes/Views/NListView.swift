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

    var body: some View {
        List {
            ForEach(appInfo.cards) { card in
                NCardView(card: card)
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
            }
    }
}

#Preview {
    NListView()
        .environmentObject(AppInfo())
}
