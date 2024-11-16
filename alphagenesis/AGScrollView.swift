//
//  AGScrollView.swift
//  alphagenesis
//
//  Created by codeSyre on 16/11/2024.
//

import SwiftUI

struct AGScrollView: View {
    let users: Array<User>
    
    struct User: Identifiable{
        let id = UUID()
        let avatar: String
        let bio: String
        let username: String
        
        init(avatar: String, bio: String, username: String){
            self.avatar = avatar
            self.bio = bio
            self.username = username
        }
    }
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 20) {
                ForEach(users) { user in
                    LazyHStack {
                        Image("me")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .clipShape(.circle)
                        VStack(alignment: .leading){
                            Text("codeSyre")
                                .font(.headline)
                            Text("I am the stone that the builder refused.")
                                .font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    AGScrollView(users: [
        AGScrollView.User(avatar: "me", bio: "I am the stone that the builder refused.", username: "codeSyre"),
        AGScrollView.User(avatar: "me", bio: "I am the stone that the builder refused.", username: "codeSyre"),
        AGScrollView.User(avatar: "me", bio: "I am the stone that the builder refused.", username: "codeSyre"),
        AGScrollView.User(avatar: "me", bio: "I am the stone that the builder refused.", username: "codeSyre"),
        AGScrollView.User(avatar: "me", bio: "I am the stone that the builder refused.", username: "codeSyre"),
        AGScrollView.User(avatar: "me", bio: "I am the stone that the builder refused.", username: "codeSyre"),
        AGScrollView.User(avatar: "me", bio: "I am the stone that the builder refused.", username: "codeSyre"),
        AGScrollView.User(avatar: "me", bio: "I am the stone that the builder refused.", username: "codeSyre"),
        AGScrollView.User(avatar: "me", bio: "I am the stone that the builder refused.", username: "codeSyre"),
        AGScrollView.User(avatar: "me", bio: "I am the stone that the builder refused.", username: "codeSyre"),
        AGScrollView.User(avatar: "me", bio: "I am the stone that the builder refused.", username: "codeSyre")
    ])
}
