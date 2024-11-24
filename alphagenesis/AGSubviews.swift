//
//  AGSubviews.swift
//  alphagenesis
//
//  Created by codeSyre on 20/11/2024.
//

import SwiftUI

struct AGSubviews: View {
    @State var text: String = "codeSyre"
    @State var btnTitle: String = "Full Name"
    @State var isClicked: Bool = false
    var body: some View {
        VStack{
            Text(text)
                .font(.largeTitle)
                .padding()
            ButtonText(text: $text, btnTitle: $btnTitle, isClicked: $isClicked)
        }
    }
    
    
}

struct ButtonText: View {
    @Binding var text: String
    @Binding var btnTitle: String
    @Binding var isClicked: Bool
    var body: some View {
        Button(
            action: {
                isClicked.toggle()
                changeText()
            }, label: {
                Text(btnTitle)
                    .foregroundColor(.white)
            }
        )
        .padding()
        .padding(.horizontal, 20)
        .background(.blue)
        .cornerRadius(10)
    }
    
    func changeText() -> Void{
        if isClicked {
            text = "Syre Wolf"
            btnTitle = "Username"
        } else {
            text = "codeSyre"
            btnTitle = "Full Name"
        }
    }
}

#Preview {
    AGSubviews()
}
