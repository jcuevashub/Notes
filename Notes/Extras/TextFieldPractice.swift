//
//  TextFieldPractice.swift
//  Notes
//
//  Created by Jackson Cuevas on 11/1/25.
//

import SwiftUI

struct TextFieldPractice: View {
    @State var name: String = ""
    @State var color: Color = Color.gray.opacity(0.2)
    
    var body: some View {
//        TextField("Name", text: $name)
//            .font(.headline)
//            .padding()
//            .background(color)
//            .cornerRadius(8)
//            .padding()
//            .onChange(of:name) { newValue in
//                if newValue.count > 10 {
//                    color = .red
//                } else {
//                    color = Color.gray.opacity(0.2)
//                }
//            }
        
        TextEditor(text: $name)
            .font(.headline)
            .padding()
            .background(color)
            .cornerRadius(8)
            .scrollContentBackground(.hidden)
            .frame(height: 200)
            .padding()
            .onChange(of:name) { newValue in
                if newValue.count > 10 {
                    color = .red
                } else {
                    color = Color.gray.opacity(0.2)
                }
            }
        
    }
}

#Preview {
    TextFieldPractice()
}
