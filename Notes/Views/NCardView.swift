//
//  NCardView.swift
//  Notes
//
//  Created by Jackson Cuevas on 11/1/25.
//

import SwiftUI

struct NCardView: View {
    let card: NCard
    
    var onToggleFavorite: (() -> Void)?
    
    func FavoriteButton() -> some View {
        Image(systemName: card.isFavorite ? "heart.fill" : "heart")
            .foregroundStyle(Color.red)
            .onTapGesture {
                onToggleFavorite?()
            }
    }
    
    @ViewBuilder
    func SmallCardView() -> some View {
        
        HStack(){
            Text(card.title)
                .font(.headline)
                .lineLimit(2)
                .frame(width: 150, height: 40)
                .background(Color.cyan.opacity(0.5))
                .cornerRadius(8)
            
            Text(card.text)
                .font(.subheadline)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            FavoriteButton()
        }
         .padding()
         .background(Color.cyan.opacity(0.1))
         .cornerRadius(16)
         .listRowSeparator(.hidden)
    }
    
    @ViewBuilder
    func MediumCardView() -> some View {
        VStack {
            HStack(alignment: .top) {
                Spacer()
                FavoriteButton()
            }
            
            Text(card.title)
                .font(.title2)
                .lineLimit(2)
                .padding(.vertical,8)
                .padding(.horizontal,30)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            
            Text(card.text)
                .font(.body)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)

        }
        .frame(height: 150)
        .padding()
        .background(Color.cyan.opacity(0.5))
        .cornerRadius(16)
        .listRowSeparator(.hidden)
    }
    
    
    var body: some View {
        switch card.type {
            case .medium:
                MediumCardView()
            case .small:
                SmallCardView()
        }
    }
}

#Preview {
    VStack {
        NCardView(card: NCard(title: "Small Card", text: "This is a small card.", type: .small))
  
        NCardView(card: NCard(title: "Medium Card", text: "This is a small card.", type: .medium))
        
        NCardView(card: NCard(title: "Small Card", text: "This is a small card.", type: .small))
        
        NCardView(card: NCard(title: "Medium Card", text: "This is a small card.", type: .medium))
        
        NCardView(card: NCard(title: "Small Card", text: "This is a small card.", type: .small))
        
        NCardView(card: NCard(title: "Medium Card", text: "This is a small card.", type: .medium))
        
        NCardView(card: NCard(title: "Small Card", text: "This is a small card.", type: .small))
        
    }
}
