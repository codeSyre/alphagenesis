//
//  AGShapes.swift
//  alphagenesis
//
//  Created by codeSyre on 10/11/2024.
//

import SwiftUI

struct AGShapes: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular).scaleEffect(x: 0.5, y: 0.5)
//            .frame(width: 200, height:  100)
//        Rectangle().frame(width: 200, height: 100)
//            .fill(.blue)
//            .stroke(Color.purple, style: StrokeStyle(lineWidth: 2))
//            .strokeBorder(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 5))
//            .trim(from: 0.0, to: 0.5)
//            .stroke(style: StrokeStyle(lineWidth: 2))
        
        HStack(alignment: .center){
            ZStack{
                Circle()
                    .fill(Color.gray.opacity(0.1))
                Text("Tk")
            }
            .frame(width: 100)
            .padding([.horizontal])
            Text("I am codeSyre.")
        }.padding([.horizontal, .vertical])
            .frame(maxWidth: .infinity, maxHeight: 100)
//            .background(Color.gray.opacity(0.05))
            .border(Color.purple.opacity(0.1), width: 1)
    }
}

#Preview {
    AGShapes()
}
