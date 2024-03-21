//
//  RoleRow.swift
//  WinkyKiller
//
//  Created by Samy Mehdid on 21/3/2024.
//

import SwiftUI

struct RoleRow: View {
    
    private let playerNo: Int
    private let role: Role
    
    init(_ role: Role, playerNo: Int) {
        self.role = role
        self.playerNo = playerNo
    }
    
    var body: some View {
        HStack(spacing: 16){
            Image(role.value)
                .resizable()
                .scaledToFit()
                .padding(4)
                .background(.ultraThinMaterial)
                .clipShape(.rect(cornerRadius: 6))
                .frame(height: 80)
                .overlay {
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(lineWidth: 1)
                        .fill(
                            .linearGradient(
                                colors: [.white, .clear],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                }
            
            VStack(alignment: .leading, spacing: 8){
                Text(role.value)
                    .font(.custom("Amarante-Regular", size: 32))
                    .foregroundStyle(.white)
                
                Text("Player \(playerNo)")
                    .font(.system(size: 24, weight: .medium))
            }
            
            Spacer()
        }
        .padding(10)
        .background(Color.secondaryy)
        .clipShape(.rect(cornerRadius: 8))
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 2)
                .fill(
                    .linearGradient(
                        colors: [.white, .clear],
                        startPoint: .bottomTrailing,
                        endPoint: .topLeading
                    )
                )
        }
    }
}

#Preview {
    RoleRow(Required.killer, playerNo: 2)
}
