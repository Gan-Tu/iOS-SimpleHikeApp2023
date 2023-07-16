//
//  CustomButtonView.swift
//  SimpleHikeApp2023
//
//  Created by Gan Tu on 7/16/23.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [.white, .green_light, .green_medium],
                                     startPoint: .top,
                                     endPoint: .bottom))
            
            Circle()
                .stroke(LinearGradient(colors: [.gray_light, .gray_medium],
                                       startPoint: .top,
                                       endPoint: .bottom),
                        lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [.gray_light, .gray_medium],
                                                startPoint: .top,
                                                endPoint: .bottom))
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
