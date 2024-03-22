//
//  PlayersNumView.swift
//  WinkyKiller
//
//  Created by Samy Mehdid on 21/3/2024.
//

import SwiftUI

struct PlayersNumView: View {
    
    @State private var playersNum = ""
    
    @FocusState private var playersNumFieldIsFocused: Bool
    
    var body: some View {
        VStack{
            Spacer()
            VStack(spacing: 38){
                Text("How many are you?")
                    .font(.custom("Amarante-Regular", size: 32))
                
                TextField("Number of players", text: $playersNum)
                    .keyboardType(.numberPad)
                    .focused($playersNumFieldIsFocused)
                    .fixedSize(horizontal: true, vertical: true)
                    .padding(4)
                    .padding(.horizontal, 8)
                    .background(.ultraThinMaterial)
                    .clipShape(.rect(cornerRadius: 4))
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 16))
            
            Spacer()
            
            NavigationLink("Confirm") {
                RoleCard(.killer)
            }
            .buttonStyle(PrimaryButton())
        }
        .padding()
    }
}

#Preview {
    PlayersNumView()
}
