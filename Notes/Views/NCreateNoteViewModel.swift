//
//  NCreateNoteViewModel.swift
//  Notes
//
//  Created by Jackson Cuevas on 12/1/25.
//

import SwiftUI

class NCreateNoteViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var text: String = ""
    @Published var type: TypeCard = TypeCard.medium
    @Published var isFavorite: Bool = false
    
    func createNote() -> NCard {
        let note = NCard(title: title, text: text, type: type, isFavorite: isFavorite)
        
        return note
    }
    
}

