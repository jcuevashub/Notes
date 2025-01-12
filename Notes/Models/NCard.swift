//
//  Untitled.swift
//  Notes
//
//  Created by Jackson Cuevas on 11/1/25.
//

import Foundation

struct NCard: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var type: TypeCard
    var isFavorite: Bool?
}

enum TypeCard: String, CaseIterable {
    case small
    case medium
}
