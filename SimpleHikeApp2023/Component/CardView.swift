//
//  CardView.swift
//  SimpleHikeApp2023
//
//  Created by Gan Tu on 7/16/23.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var isShowingSettings:Bool = false
    
    func changeImage() {
        var randomNumber: Int = imageNumber
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()

            VStack {
                // MARK: - Header
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
                            isShowingSettings.toggle()
                        }, label: {
                            CustomButtonView()
                        })
                        .sheet(isPresented: $isShowingSettings, content: {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        })
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.gray_medium)
                        .font(.subheadline)
                }
                .padding(.horizontal, 30)
                
                // MARK: MAIN CONTENT
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                // MARK: - Footer
                Button(action: {
                    changeImage()
                }, label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.green_light, .green_medium],
                                           startPoint: .top,
                                           endPoint: .bottom)
                        )
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.25), radius: 0.25, x:1, y:2)
                })
                .buttonStyle(GradientButtonStyle())
            }
        }
        .frame(width: 350, height: 570)
    }
}

#Preview {
    CardView()
}
