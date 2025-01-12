//
//  GesturesPractice.swift
//  Notes
//
//  Created by Jackson Cuevas on 12/1/25.
//

import SwiftUI

struct GesturesPractice: View {
    @State var color: Color = .black
    @State var offset: CGSize = .zero
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged() { value in
                        offset = value.translation
                    }
            )
    }
}

#Preview {
    GesturesPractice()
}
