//
//  ContentView.swift
//  WinkyKiller
//
//  Created by Samy Mehdid on 21/3/2024.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack {
            Spacer()
            
            NavigationLink("Start") {
                RoleCard(.killer)
            }
            .buttonStyle(PrimaryButton())
        }
        .padding()
        .background{
            Image("pattern")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.1)
        }
        .background(Color.primaryy)
    }
}

#Preview {
    StartView()
}
