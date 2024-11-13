//
//  AGIcons.swift
//  alphagenesis
//
//  Created by codeSyre on 13/11/2024.
//

import SwiftUI

struct AGIcons: View {
    var body: some View {
        Image(systemName: "waveform.path.ecg")
//            .font(.largeTitle)
            .resizable()
            .scaledToFill()
            .symbolEffect(.pulse)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    AGIcons()
}
