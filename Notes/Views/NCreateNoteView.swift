//
//  NCreateNoteView.swift
//  Notes
//
//  Created by Jackson Cuevas on 11/1/25.
//

import SwiftUI

struct NCreateNoteView: View {
    @StateObject var viewModel: NCreateNoteViewModel = NCreateNoteViewModel()
    
    var onNoteCreated: ((NCard) -> Void)?
    
    func onTap() {
        let card = viewModel.createNote()
        print(card)
        onNoteCreated?(card)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Crear Nueva Nota")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 10)
                
                NTextField(placeholder: "Titulo", text: $viewModel.title)
                NTextEditor(text: $viewModel.text)
                  
                HStack {
                    Text("Tamaño")
                    Spacer()
                    Picker("Tamanos", selection: $viewModel.type) {
                        Text("Pequeno").tag(TypeCard.small)
                        Text("Mediano").tag(TypeCard.medium)
                    }
                }.padding()
                Toggle("Marcar como favorito", isOn: $viewModel.isFavorite)
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
