//
//  ProgressExample.swift
//  Notes
//
//  Created by Jackson Cuevas on 12/1/25.
//

import SwiftUI

struct ProgressExample: View {
    @State private var progress: Double = 0.3
    
    var body: some View {
        VStack {
            Text("Cargando...")
                .font(.headline)
            
            //Barra de progreso
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle())
                .padding()
            
            //Button para simular progreso
            Button("Simular progreso") {
                withAnimation {
                    progress = min(progress + 0.1, 1.0)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ProgressExample()
}
