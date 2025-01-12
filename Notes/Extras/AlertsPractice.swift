//
//  AlertsPractice.swift
//  Notes
//
//  Created by Jackson Cuevas on 12/1/25.
//

import SwiftUI

struct AlertsPractice: View {
    @State var showAlert: Bool = false
    @State var showBottomSheet: Bool = false
    
    var body: some View {
        VStack {
            Button("Ahow Alert") {
                showAlert = true
            }.alert("Esta es una alerta",
                    isPresented: $showAlert) {
                Button("Ok") {
                    print("Ok")
                }
                Button("Cancel") {
                    print("Cancel")
                }
            }
            
            Button("Ahow Bottom Sheet") {
                showBottomSheet = true
            }.sheet(isPresented: $showBottomSheet, content: {
                NCreateNoteView()
            })
        }
    }
}

#Preview {
    AlertsPractice()
}
