//
//  PickersPractice.swift
//  Notes
//
//  Created by Jackson Cuevas on 11/1/25.
//

import SwiftUI

struct PickersPractice: View {
    @State var date: Date = Date()
    @State var category: Int = 0
    @State var size: TypeCard = .medium
    var body: some View {
//        DatePicker("Fecha:", selection: $date, displayedComponents: [.hourAndMinute])
//            .datePickerStyle(WheelDatePickerStyle())
//            .padding()
        
//        Picker("Categoria", selection: $category) {
//            Text("0").tag(0)
//            Text("1").tag(1)
//            Text("2").tag(2)
//        }.pickerStyle(.segmented)
        
        Picker("Tamano", selection: $size) {
            Text("Pequeno").tag(TypeCard.small)
            Text("Mediano").tag(TypeCard.medium)
        }
        
    }
}

#Preview {
    PickersPractice()
}
