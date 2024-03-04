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
    
    @FocusState var isInputActive: Bool
    
    var body: some View {
        ZStack {
            Color(Color(red: 0.1, green: 0.4, blue: 0.85))
                .ignoresSafeArea()
            VStack(spacing: 40) {
                ColorView(
                    redValue: $redSliderValue,
                    greenValue: $greenSliderValue,
                    blueValue: $blueSliderValue
                )
                
                VStack {
                    ColorSliderView(color: .red, colorValue: $redSliderValue)
                    ColorSliderView(color: .green, colorValue: $greenSliderValue)
                    ColorSliderView(color: .blue, colorValue: $blueSliderValue)
                }
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        
                        Button("Done") {
                            isInputActive = false
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

enum ColorEdited {
    case red, green, blue
}

#Preview {
    ContentView(redSliderValue: 169, greenSliderValue: 136, blueSliderValue: 165)
}
