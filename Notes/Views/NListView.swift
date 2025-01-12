//
//  NListView.swift
//  Notes
//
//  Created by Jackson Cuevas on 11/1/25.
//

import SwiftUI

struct NListView: View {
    @State var showBottomSheet: Bool = false
    
    let cards: [NCard] = [
        NCard(title: "Small Card", text: "This is a small card.", type: .small),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium),
        NCard(title: "Small Card", text: "This is a small card.", type: .small),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium),
        NCard(title: "Small Card", text: "This is a small card.", type: .small),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium)
    ]
    
    
    var body: some View {
        List {
            ForEach(cards) { card in
                NCardView(card: card)
            }
        }.listStyle(.plain)
            .sheet(isPresented: $showBottomSheet) {
                NCreateNoteView() { card in
                    print(card)
                    
                }
            }.overlay {
                VStack {
                    Spacer()
                    Button("Show Bottom Sheet") {
                        showBottomSheet = true
                    }
                }
            }
    }
}

#Preview {
    NListView()
}
