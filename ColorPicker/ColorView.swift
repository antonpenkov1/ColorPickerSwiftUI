//
//  ColorView.swift
//  ColorPicker
//
//  Created by Антон Пеньков on 04.03.2024.
//

import SwiftUI

struct ColorView: View {
//    @State var color: Color
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        Color(Color(red: redValue/255, green: greenValue/255, blue: blueValue/255))
            .ignoresSafeArea()
            .frame(height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 4)
                    .foregroundStyle(.white)
            )
    }
}

#Preview {
//    ColorView(color: .constant(.red))
    ColorView(redValue: .constant(169), greenValue: .constant(136), blueValue: .constant(250))
}
