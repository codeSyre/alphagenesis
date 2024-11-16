//
//  AGInits.swift
//  alphagenesis
//
//  Created by codeSyre on 15/11/2024.
//

import SwiftUI

struct AGInits: View {
    let users: Int
    let userStatus: String
    let backgroundColor: Color
    
    init(users: Int, status: Status) {
        self.users = users
        
//        if status == .active {
//            self.userStatus = "Active users"
//            self.backgroundColor = .green
//        } else{
//            self.userStatus = "Inactive users"
//            self.backgroundColor = .blue
//        }
        switch status {
        case .active:
            self.userStatus = "Active users"
            self.backgroundColor = .green
        case .inactive:
            self.userStatus = "Inactive users"
            self.backgroundColor = .blue
        case .suspended:
            self.userStatus = "Suspended users"
            self.backgroundColor = .red
        default:
            self.backgroundColor = .yellow
            userStatus = "Unknown status"
        }
    }

    enum Status: String {
        case active, inactive, suspended
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(users)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Text("Active users")
                .font(.subheadline)
                .foregroundColor(.white)
        }
//        .frame(width: 200, height: 100)
        .padding()
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        AGInits(users: 20, status: .active)
        AGInits(users: 10, status: .inactive)
        AGInits(users: 2, status: .suspended)
    }
    Spacer()
}
