//
//  CustomListRowView.swift
//  Hike-App
//
//  Created by Hugo Rodrigues on 06/11/24.
//

import SwiftUI

struct CustomListRowView: View {
//    MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        if #available(iOS 16.0, *) {
            
            
            LabeledContent {
                // Content
                if rowContent != nil {
                    Text (rowContent!)
                        .foregroundColor(.primary)
                        .fontWeight(.heavy)
                } else if (rowLinkLabel != nil &&
                           rowLinkDestination != nil) {
                    Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                        .foregroundColor(.pink)
                        .fontWeight(.heavy)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            } label: {
                //Label
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
            }
            
            
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    List {
        CustomListRowView(
            rowLabel: "Website",
            rowIcon: "globe",
            rowContent: nil,
            rowTintColor: .pink,
            rowLinkLabel: "Perfil HugoRodrigues",
            rowLinkDestination: "https://www.linkedin.com/in/dev-hugo-rs"
        )
    }
}
