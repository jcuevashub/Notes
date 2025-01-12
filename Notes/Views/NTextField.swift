//
//  NTextField.swift
//  Notes
//
//  Created by Jackson Cuevas on 12/1/25.
//

import SwiftUI

struct NTextField: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        //Reutilizamo el diseno del formulario original
        TextField(placeholder, text: $text)
            .font(.headline)
            .padding()
            .background(Color.secondary.opacity(0.1))
            .cornerRadius(8)
    }
}

#Preview {
   VStack {
       NTextField(placeholder: "Escribe algo aqui...", text: .constant("Texto Inicial"))
       NTextField(placeholder: "Escribe algo aqui...", text:  .constant("Text"))
   }.padding()
}
