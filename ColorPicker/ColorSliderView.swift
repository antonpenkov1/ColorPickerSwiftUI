//
//  ColorSliderView.swift
//  ColorPicker
//
//  Created by Антон Пеньков on 04.03.2024.
//

import SwiftUI

struct ColorSliderView: View {
    let color: Color
    
    @Binding var colorValue: Double
        
    var body: some View {
        HStack {
            Text(lround(colorValue).formatted())
                .frame(width: 35)
                .foregroundStyle(.white)
            Slider(value: $colorValue, in: 0...255, step: 1)
                .tint(color)
            TextField("0", value: $colorValue, format: .number.rounded(increment: 1))
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
                .frame(width: 50)
        }
    }
}

#Preview {
    ColorSliderView(color: .red, colorValue: .constant(169))
}
