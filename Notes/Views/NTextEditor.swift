
//
//  NTextField.swift
//  Notes
//
//  Created by Jackson Cuevas on 12/1/25.
//

import SwiftUI

struct NTextEditor: View {
    @Binding var text: String
    
    var body: some View {
        //Reutilizamo el diseno del formulario original
        TextEditor(text: $text)
            .scrollContentBackground(.hidden)
            .font(.body)
            .frame(height: 200)
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
    }
}

#Preview {
   VStack {
       NTextEditor(text: .constant("Texto Inicial"))
   }.padding()
}
