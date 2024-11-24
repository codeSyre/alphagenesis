//
//  AGNavigationView.swift
//  alphagenesis
//
//  Created by codeSyre on 24/11/2024.
//

import SwiftUI

struct AGNavigationView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                NavigationLink("Go to Second Screen", destination: SecondScreen())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("AGNavigationView")
            .navigationBarItems(
                trailing:
                    HStack{
                        NavigationLink(
                            destination: SecondScreen(),
                            label: { Image(systemName: "person.circle") }
                        )
                        NavigationLink(
                            destination: SecondScreen(),
                            label: {
                                Image(systemName: "gear")
                            }
                        )
                    }
            )
        }
    }
}

struct SecondScreen: View {
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Second Screen")
            NavigationLink("Go to 3rd Screen", destination: Text("We're here!!!"))
        }
    }
}

#Preview {
    AGNavigationView()
}
