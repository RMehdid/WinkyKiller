//
//  RoleRow.swift
//  WinkyKiller
//
//  Created by Samy Mehdid on 21/3/2024.
//

import SwiftUI

struct RoleSelectionRow: View {
    
    @State private var isSelected: Bool = false
    
    private let role: Role
    
    init(_ role: Role) {
        self.role = role
    }
    
    var body: some View {
        Button {
            self.isSelected.toggle()
        } label: {
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
                
                    Text(role.value + "s")
                        .font(.custom("Amarante-Regular", size: 32))
                        .foregroundStyle(.white)
                
                Spacer()
            }
            .padding(10)
            .background(isSelected ? Color.primaryy : Color.secondaryy)
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
}

#Preview {
    RoleSelectionRow(Optional.dame)
}
