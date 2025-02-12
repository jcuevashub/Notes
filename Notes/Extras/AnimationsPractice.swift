//
//  AnimationsPractice.swift
//  Notes
//
//  Created by Jackson Cuevas on 12/1/25.
//

import SwiftUI

struct AnimationsPractice: View {
    @State var showGreen: Bool = false
    
    var body: some View {
        VStack {
            //Circulo azul
            Circle()
                .foregroundStyle(Color.cyan)
                .frame(width: 200, height: 200)
                .onTapGesture {
                    withAnimation {
                        showGreen.toggle()
                    }
                }
            
            //Circulo verde (visible si showgreen es true)
            if showGreen {
                Circle()
                    .foregroundStyle(Color.green)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .slide, removal: .scale))
            }
            
        }
    }
}

#Preview {
    AnimationsPractice()
}
