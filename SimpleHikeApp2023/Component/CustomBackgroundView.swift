//
//  CustomBackgroundView.swift
//  SimpleHikeApp2023
//
//  Created by Gan Tu on 7/16/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - Depth
            Color.green_dark
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: - Light
            Color.green_light
                .cornerRadius(40)
                .offset(y: 4)
                .opacity(0.85)
            
            // MARK: - Surface
            LinearGradient(
                colors: [.green_light, .green_medium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
