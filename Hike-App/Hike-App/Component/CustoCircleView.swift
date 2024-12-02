//
//  CustoCircleView.swift
//  Hike-App
//
//  Created by Hugo Rodrigues on 04/11/24.
//

import SwiftUI

struct CustoCircleView: View {
    
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmonLight
                        ],
                        startPoint: isAnimateGradient ? .topLeading :
                                .bottomLeading,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topLeading)
                )
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
                }
            
            MotionAnimationView()
        }//: ZStack
        .frame(width: 256, height: 256)
        
    }
}
//h
#Preview {
    CustoCircleView()
}
