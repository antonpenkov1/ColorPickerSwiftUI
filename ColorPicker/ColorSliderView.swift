//
//  ColorSliderView.swift
//  ColorPicker
//
//  Created by Антон Пеньков on 04.03.2024.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var colorValue: Double
    
    let color: Color
    
    var body: some View {
        HStack {
            Text(lround(colorValue).formatted())
                .frame(width: 35)
                .foregroundStyle(.white)
            Slider(value: $colorValue, in: 0...255, step: 1)
                .tint(color)
        }
    }
}

#Preview {
    ColorSliderView(colorValue: .constant(169), color: .red)
}
