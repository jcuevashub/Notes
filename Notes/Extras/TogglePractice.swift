//
//  TogglePractice.swift
//  Notes
//
//  Created by Jackson Cuevas on 11/1/25.
//

import SwiftUI

struct TogglePractice: View {
    @State var age: Double = 18
    @State var isAdult: Bool = false
    
    var body: some View {
        Text("Age: \(age.formatted(.number))")
        Slider(value: $age, in: 1...100, step: 1)
        Toggle("Is Adult?", isOn: $isAdult)
            .padding()
            .onChange(of: age) {
                if age >= 18 {
                    isAdult = true
                } else  {
                    isAdult = false
                }
            }
    }
}

#Preview {
    TogglePractice()
}
