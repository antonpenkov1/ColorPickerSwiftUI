//
//  ContentView.swift
//  ColorPicker
//
//  Created by Антон Пеньков on 04.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State var redSliderValue = Double.random(in: 0...255)
    @State var greenSliderValue = Double.random(in: 0...255)
    @State var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()
                .opacity(0.85)
            VStack(spacing: 40) {
                ColorView(
                    redValue: $redSliderValue,
                    greenValue: $greenSliderValue,
                    blueValue: $blueSliderValue
                )
                
                VStack {
                    ColorSliderView(colorValue: $redSliderValue, color: .red)
                    ColorSliderView(colorValue: $greenSliderValue, color: .green)
                    ColorSliderView(colorValue: $blueSliderValue, color: .blue)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView(redSliderValue: 169, greenSliderValue: 136, blueSliderValue: 165)
}
