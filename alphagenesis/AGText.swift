//
//  AGText.swift
//  alphagenesis
//
//  Created by Yani Development Team on 10/11/2024.
//

import SwiftUI

struct AGText: View {
    var body: some View {
        Text("I am codeSyre. I am here to help you build your app.".capitalized)
            .font(.title)
//            .fontWeight(.semibold)
//            .bold().underline()
//            .strikethrough(true, color: Color.red)
//            .font(.system(size: 24, weight: .semibold, design: .rounded))
            .multilineTextAlignment(.leading).baselineOffset(10).kerning(10).foregroundColor(.gray).frame(width: 200, height: 100, alignment: .leading).minimumScaleFactor(0.1)
        Text("Here goes nothing again.").font(.largeTitle).fontWeight(.semibold).foregroundColor(.green)
    }
}

#Preview {
    AGText()
}
