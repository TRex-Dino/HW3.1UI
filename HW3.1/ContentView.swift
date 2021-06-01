//
//  ContentView.swift
//  HW3.1
//
//  Created by Dmitry on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var text = "START"
    @State private var color: Colors = .red
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    private let gray = 0.3
    private let light = 1.0
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                VStack(spacing: 20) {
                    TrafficCircle(color: .red, opacity: redOpacity)
                    TrafficCircle(color: .yellow, opacity: yellowOpacity)
                    TrafficCircle(color: .green, opacity: greenOpacity)
                }
                Spacer()
                Button(action: {
                    touchStart()
                }) {
                    StartButtonText(text: text)
                }
            }
            .padding()
        }
    }
    
    private func touchStart() {
        text = "NEXT"
        
        switch color{
        case .red:
            redOpacity = light
            greenOpacity = gray
            color = .yellow
        case .yellow:
            yellowOpacity = light
            redOpacity = gray
            color = .green
        case .green:
            greenOpacity = light
            yellowOpacity = gray
            color = .red
        }
    }
}

    enum Colors {
        case red, green, yellow
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
