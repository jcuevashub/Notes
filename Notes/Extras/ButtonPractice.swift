//
//  ButtonPractice.swift
//  Notes
//
//  Created by Jackson Cuevas on 11/1/25.
//

import SwiftUI

struct ButtonPractice: View {
    @State var counter: Int = 0
    var body: some View {
        VStack {
            Text("\(counter)")
            Button {
                counter += 1
            } label: {
                Text("Increment")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }.padding()
    }
}

#Preview {
    ButtonPractice()
}
