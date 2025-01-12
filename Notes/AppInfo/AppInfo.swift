//
//  AppInfo.swift
//  Notes
//
//  Created by Jackson Cuevas on 12/1/25.
//

import Foundation
class AppInfo: ObservableObject {
    @Published var cards: [NCard] = [
        NCard(title: "Small Card", text: "This is a small card.", type: .small, isFavorite: false),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium,isFavorite: false),
        NCard(title: "Small Card", text: "This is a small card.", type: .small,isFavorite: true),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium,isFavorite: false),
        NCard(title: "Small Card", text: "This is a small card.", type: .small,isFavorite: true),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium,isFavorite: false)
        
    ]

    var favorites: [NCard] {
        cards.filter{$0.isFavorite}
    }
    
    func addCard(card: NCard) {
        cards.append(card)
    }
    
    func toggleFavorite(card: NCard) {
        if let index = cards.firstIndex(of: card) {
            cards[index].isFavorite.toggle()
        }
    }
}
