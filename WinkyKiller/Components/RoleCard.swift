//
//  RoleCard.swift
//  WinkyKiller
//
//  Created by Samy Mehdid on 21/3/2024.
//

import SwiftUI

struct RoleCard: View {
    
    private let role: Role
    
    init(_ role: Role) {
        self.role = role
    }
    
    var body: some View {
        VStack {
            Image(role.rawValue)
                .resizable()
                .scaledToFit()
            
            Text(role.rawValue)
                .font(.custom("Amarante-Regular", size: 32))
        }
        .padding()
        .frame(width: 200, height: 300)
        .background(.ultraThinMaterial)
        .clipShape(.rect(cornerRadius: 16))
        .overlay {
            RoundedRectangle(cornerRadius: 16)
                .stroke(lineWidth: 2)
                .fill(
                    .linearGradient(
                        colors: [.white, .clear],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
        }
    }
}

#Preview {
    RoleCard(.killer)
}
