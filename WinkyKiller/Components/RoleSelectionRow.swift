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
    
    private var didSet: (Bool) -> Void
    
    init(_ role: Role, didSet: @escaping (Bool) -> Void) {
        self.role = role
        self.didSet = didSet
    }
    
    var body: some View {
        Button {
            self.isSelected.toggle()
            
            didSet(isSelected)
        } label: {
            HStack(spacing: 16){
                Image(role.rawValue)
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
                
                Text(role.rawValue)
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
    RoleSelectionRow(.dame) { role in
        
    }
}
