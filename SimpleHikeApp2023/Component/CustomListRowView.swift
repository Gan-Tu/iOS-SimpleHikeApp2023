//
//  CustomListRowView.swift
//  SimpleHikeApp2023
//
//  Created by Gan Tu on 7/16/23.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPERTIES
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    @State var rowTintColor: Color
    
    var body: some View {
        LabeledContent(content: {
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if (rowLinkLabel != nil && rowLinkDestination != nil) {
                Link(rowLinkLabel!,
                     destination: URL(string: rowLinkDestination!)!)
                .foregroundColor(rowTintColor)
                .fontWeight(.heavy)
            } else {
                EmptyView()
            }
        }, label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        })
    }
}

#Preview {
    List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
        CustomListRowView(
            rowLabel: "Item \(item)",
            rowIcon: "paintpalette",
            rowContent: "John Doe",
            rowTintColor: .pink
        )
        CustomListRowView(
            rowLabel: "Website",
            rowIcon: "globe",
            rowLinkLabel: "Credo Academy",
            rowLinkDestination: "https://credo.academy",
            rowTintColor: .pink
        )
    }
}
