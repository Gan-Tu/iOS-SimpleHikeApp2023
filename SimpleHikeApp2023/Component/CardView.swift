//
//  CardView.swift
//  SimpleHikeApp2023
//
//  Created by Gan Tu on 7/16/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()

            VStack {
                // Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.gray_light, .gray_medium],
                                               startPoint: .top,
                                               endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button(action: {
                            // TODO: Show a sheet
                        }, label: {
                            CustomButtonView()
                        })
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.gray_medium)
                        .font(.subheadline)
                }
                .padding(.horizontal, 30)
                
                // Main Content
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [.indigo_medium,.salmon_light],
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                // Footer
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
