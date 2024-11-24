//
//  AGAnimations.swift
//  alphagenesis
//
//  Created by codeSyre on 24/11/2024.
//

import SwiftUI

struct AGAnimations: View {
    @State var isAnimated: Bool = false
    @State var showView: Bool = false
    var body: some View {
        VStack{
            Button(
                action:{
                    withAnimation(.easeInOut){
                        isAnimated.toggle()
                    }
                    showView.toggle()
                },
                label: {
                    Text("Click Me")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(isAnimated ? Color.red : Color.blue)
                        .cornerRadius(10)
                }
            )
            Spacer()
        }
        
        if showView {
            RoundedRectangle(cornerRadius: 30)
                .fill(isAnimated ? Color.red : Color.blue)
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .transition(.move(edge: .bottom))
                .animation(.easeInOut)
        }
    }
}

#Preview {
    AGAnimations()
}
