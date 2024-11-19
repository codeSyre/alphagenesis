//
//  AGGradient.swift
//  alphagenesis
//
//  Created by codeSyre on 13/11/2024.
//

import SwiftUI

struct AGGradient: View {
    var body: some View {
        RoundedRectangle(
            cornerRadius: 10
        )
        .fill(
            Gradient(
                colors: [.red, .blue]
            )
        )
        .frame(
            width: 200,
            height: 100
        )
        
        
            RoundedRectangle(
                cornerRadius: 10
            )
            .fill(
                LinearGradient(
                    colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))],
                    startPoint: .leading,
                    endPoint: .trailing)
            )
            .frame(
                width: 200,
                height: 100
            )
        
            RoundedRectangle(
                cornerRadius: 10
            )
            .fill(
                RadialGradient(
                    colors: [Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))],
                    center: .center,
                    startRadius: 10,
                    endRadius: 200)
            )
            .frame(
                width: 200,
                height: 100
            )
        
        
        RoundedRectangle(
            cornerRadius: 10
        )
        .fill(
            AngularGradient(
                colors: [Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))],
                center: .center,
                angle: .degrees(45)
            )
        )
        .frame(
            width: 200,
            height: 100
        )
    }
}

#Preview {
    AGGradient()
}
