//
//  AGImages.swift
//  alphagenesis
//
//  Created by codeSyre on 14/11/2024.
//

import SwiftUI

struct AGImages: View {
    var body: some View {
//        Image("me")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: .infinity, height: .infinity)
//            .clipped()
        
//        Image("me")
//            .resizable()
//            .clipShape(.circle)
//            .frame(width: 200, height: 200)
        
        HStack{
            Image("me")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(.circle)
                .padding(.trailing)
            VStack(
                alignment: .leading
            ){
                Text("codeSyre")
                    .font(.title)
                Text("Yani Development Team")
                    .font(.footnote)
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                
            }
        }
    }
}

#Preview {
    AGImages()
}
