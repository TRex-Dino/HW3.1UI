//
//  TrafficCircle.swift
//  HW3.1
//
//  Created by Dmitry on 01.06.2021.
//

import SwiftUI

struct TrafficCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
                .opacity(opacity)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
        }
}

struct TrafficCircle_Previews: PreviewProvider {
    static var previews: some View {
        TrafficCircle(color: .green, opacity: 0.4)
    }
}
