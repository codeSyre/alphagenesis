//
//  AGSheets.swift
//  alphagenesis
//
//  Created by codeSyre on 24/11/2024.
//

import SwiftUI

struct AGSheets: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.pink
                .edgesIgnoringSafeArea(.all)
            Button(
                action:{
                    showSheet.toggle()
                },
                label:{
                    Text("Open Sheet")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            )
            .sheet(isPresented: $showSheet, content: {
                ScreenTwo()
            })
        }
    }
}

struct ScreenTwo: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button(
                action:{
                    presentationMode.wrappedValue.dismiss()
                },
                label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .foregroundColor(.red)
                }
            )
        }
    }
}

#Preview {
    AGSheets()
}
