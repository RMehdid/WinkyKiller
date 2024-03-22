//
//  RoleSelectionView.swift
//  WinkyKiller
//
//  Created by Samy Mehdid on 22/3/2024.
//

import SwiftUI

struct RoleSelectionView: View {
    
    @State private var selectedRoles = Role.required
    
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack(alignment: .leading){
                Text("Select your extra roles:")
                    .font(.custom("Amarante-Regular", size: 32))
                
                ForEach(Role.optional, id: \.hashValue) { role in
                    RoleSelectionRow(role) { newValue in
                        if newValue {
                            selectedRoles.removeAll(where: { $0 == role })
                        } else {
                            selectedRoles.append(role)
                        }
                    }
                }
            }
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 16))
            
            Spacer()
            
            Button {
                let roleManager = RoleManager(numberOfPlayers: 10)
                roleManager.generateRoles(roles: selectedRoles)
                debugPrint(roleManager.getRoleForPlayer())
            } label: {
                Text("Next")
            }
            .buttonStyle(PrimaryButton())
        }
        .padding()
        .background {
            Image("pattern")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.1)
        }
        .background(.primaryy)
    }
}

#Preview {
    RoleSelectionView()
}
