//
//  ContentView.swift
//  Notes
//
//  Created by Jackson Cuevas on 10/1/25.
//

import SwiftUI
struct NCard: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var type: TypeCard
}

enum TypeCard: String, CaseIterable {
    case small
    case medium
}

struct ContentView: View {
    let blueColor = Color(red: 208/256, green: 222/256, blue:241/256)
    let cards: [NCard] = [
        NCard(title: "Small Card", text: "This is a small card.", type: .small),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium),
        NCard(title: "Small Card", text: "This is a small card.", type: .small),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium),
        NCard(title: "Small Card", text: "This is a small card.", type: .small),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium)
    ]
    
    @ViewBuilder
    func smallCard(card: NCard) -> some View {
        
        HStack(alignment: .center, spacing: 20){
            VStack {
                Text(card.title).bold()
            }.frame(width: 150, height: 40).padding(5).cornerRadius(8)
            
            HStack {
                Text(card.text)
                Image(systemName: "heart").foregroundStyle(Color.red)
            }
        }
        .frame(width: 350, height: 50)
         .padding(20)
         .background(blueColor)
         .cornerRadius(20)
    }
    
    @ViewBuilder
    func largeCard(card: NCard) -> some View {
        VStack(alignment: .center) {
            VStack {
                Text(card.title).bold()
            }.frame(width: 150, height: 40).padding(5).cornerRadius(10)
            
            HStack{
                Text(card.title)
            }
        }.frame(width: 350, height: 150).padding(20).background(blueColor).cornerRadius(20)
    }
    
    var body: some View {
        List {
            ForEach(cards) { card in
                smallCard(card: card)
                largeCard(card: card)
            }
        }.listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
