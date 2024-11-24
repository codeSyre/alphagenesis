//
//  AGColor.swift
//  alphagenesis
//
//  Created by Yani Development Team on 10/11/2024.
//

import SwiftUI

struct AGColor: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 0.8078431373, green: 0.8078431373, blue: 0.8078431373, alpha: 0.5))
//                Color(UIColor.systemGray6)
                Color("CustomColor")
            )
            .frame(width: 200, height: 100)
            .shadow(radius: 1)
    }
}

#Preview {
    AGColor()
}
