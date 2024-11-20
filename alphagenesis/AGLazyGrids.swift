//
//  AGLazyGrids.swift
//  alphagenesis
//
//  Created by codeSyre on 18/11/2024.
//

import SwiftUI

struct AGLazyGrids: View {
    let rows = [GridItem(.fixed(30)), GridItem(.fixed(30))]
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        ZStack{
            ScrollView(.horizontal){
                LazyHGrid(rows: rows){
                    ForEach(0x1f600...0x1f679, id: \.self){value in
                        Text(String(format: "%x", value))
                        Text(emoji(value)).font(.largeTitle)
                    }
                }
            }
            
            ScrollView(.vertical){
                LazyVGrid(columns: columns){
                    ForEach(0x1f600...0x1f679, id: \.self){value in
                        Text(String(format: "%x", value))
                        Text(emoji(value)).font(.largeTitle)
                    }
                }
            }
        }
        .background(
            .blue
        )
        .ignoresSafeArea(edges: .top)
    }
    
    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
}

#Preview {
    AGLazyGrids()
}
