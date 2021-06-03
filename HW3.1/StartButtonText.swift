//
//  StartButtonText.swift
//  HW3.1
//
//  Created by Dmitry on 01.06.2021.
//

import SwiftUI

struct StartButtonText: View {
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(.white)
                .font(.title)
                .bold()
        }
        .frame(width: 150, height: 70)
        .background(Color.blue)
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.white, lineWidth: 4))
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonText(text: "TEXT", action: {})
    }
}
