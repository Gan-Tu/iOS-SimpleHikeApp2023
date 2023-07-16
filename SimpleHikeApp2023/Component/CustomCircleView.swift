//
//  CustomCircleView.swift
//  SimpleHikeApp2023
//
//  Created by Gan Tu on 7/16/23.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatedGradient: Bool = false
    
    var body: some View {
        Circle()
            .fill(
                LinearGradient(
                    colors: [
                        .indigo_medium,
                        .salmon_light
                    ],
                    startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                    endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing)
            )
            .onAppear() {
                withAnimation(.linear(duration: 3.0).repeatForever()) {
                    isAnimatedGradient.toggle()
                }
            }
            .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
