//
//  AGButtons.swift
//  alphagenesis
//
//  Created by codeSyre on 19/11/2024.
//

import SwiftUI

struct AGButtons: View {
    @State var num = 0
    var body: some View {
        VStack{
            Text("\(num)")
                .font(.largeTitle)
                .padding()
            Button(action: {
                num += 1
            }, label: {
                Text("+1")
                    .font(.title)
                    .fontWeight(.bold)
            })
            
            Button(action: {
                num -= 1
            }, label: {
                Text("-1")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(.blue)
                    .cornerRadius(10)
            })
            
            Button(
                action: {
                    num += 1
                },
                label: {
                    Circle()
                        .frame(width: 75, height: 75)
                        .foregroundColor(.blue)
                        .overlay(
                            Text("+1")
                                .font(.title)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        )
                }
            )
            
            Button(
                action: {
                    num -= 1
                },
                label: {
                    Text("-1")
                        .font(.title)
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.horizontal, 30)
                        .background(
                            Capsule()
                                .stroke(.blue, lineWidth: 2)
                        )
                }
            )
        }
    }
}

#Preview {
    AGButtons()
}
