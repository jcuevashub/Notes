//
//  NCreateNoteView.swift
//  Notes
//
//  Created by Jackson Cuevas on 11/1/25.
//

import SwiftUI

struct NCreateNoteView: View {
    @State private var title: String = ""
    @State private var text: String = ""
    @State private var size: TypeCard = TypeCard.medium
    @State private var isFavorite: Bool = false
    
    var onNoteCreated: ((NCard) -> Void)?
    
    func onTap() {
        let card = NCard(title: title, text: text, type: size, isFavorite: isFavorite)
        print("Esta es una nueva nota: \(card)")
        onNoteCreated?(card)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Crear Nueva Nota")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 10)
                
                TextField("Titulo", text: $title)
                    .font(.headline)
                    .padding()
                
                TextEditor(text: $text)
                    .scrollContentBackground(.hidden)
                    .font(.body)
                    .frame(height: 200)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                HStack {
                    Text("Tamaño")
                    Spacer()
                    Picker("Tamanos", selection: $size) {
                        Text("Pequeno").tag(TypeCard.small)
                        Text("Mediano").tag(TypeCard.medium)
                    }
                }.padding()
                Toggle("Marcar como favorito", isOn: $isFavorite)
                    .padding()
                Button {
                    onTap()
                } label: {
                    Text("Guardar Nota")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }.padding(.top,20)
            }
            
        }.padding()
         .background(Color.white)
         .cornerRadius(16)
         .padding()
         .background(Color.cyan.opacity(0.2))
    }
}

#Preview {
    NCreateNoteView()
}
