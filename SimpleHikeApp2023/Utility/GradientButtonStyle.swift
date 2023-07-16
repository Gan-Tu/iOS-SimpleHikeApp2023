//
//  GradientButtonStyle.swift
//  SimpleHikeApp2023
//
//  Created by Gan Tu on 7/16/23.
//

import Foundation
import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                    LinearGradient(colors: [.gray_light, .gray_medium],
                                   startPoint: .top,
                                   endPoint: .bottom)
                    :
                    LinearGradient(colors: [.gray_medium, .gray_light],
                                   startPoint: .top,
                                   endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
