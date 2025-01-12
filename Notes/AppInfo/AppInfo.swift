//
//  AppInfo.swift
//  Notes
//
//  Created by Jackson Cuevas on 12/1/25.
//

import Foundation
class AppInfo: ObservableObject {
    @Published var cards: [NCard] = [
        NCard(title: "Small Card", text: "This is a small card.", type: .small),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium),
        NCard(title: "Small Card", text: "This is a small card.", type: .small),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium),
        NCard(title: "Small Card", text: "This is a small card.", type: .small),
        NCard(title: "Medium Card", text: "This is a medium card.", type: .medium)
        
    ]
    

    func addCard(card: NCard) {
        cards.append(card)
    }
}
