//
//  CustomButtonView.swift
//  Hike-App
//
//  Created by Hugo Rodrigues on 31/10/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .white,
                            .customGreenLight,
                            .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
            
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom),
                    lineWidth: 4)
            
            if #available(iOS 16.0, *) {
                Image(systemName:"figure.hiking")
                    .fontWeight(.black)
                    .font(.system(size: 30))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                .customGrayLight,
                                .customGrayMedium],
                            startPoint: .top,
                            endPoint: .bottom)
                    )
            } else {
                // Fallback on earlier versions
            }
            
        }//: ZSTACK
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
