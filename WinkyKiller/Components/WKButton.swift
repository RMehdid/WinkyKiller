//
//  WKButton.swift
//  WinkyKiller
//
//  Created by Samy Mehdid on 21/3/2024.
//

import SwiftUI

struct PrimaryButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("Amarante-Regular", size: 32))
            .foregroundStyle(.ternary)
            .padding(6)
            .frame(maxWidth: .infinity)
            .background(.secondaryy)
            .clipShape(.rect(cornerRadius: 8))
    }
}

struct SecondaryButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .background(.ternary)
            .foregroundStyle(.secondary)
            .clipShape(.rect(cornerRadius: 8))
    }
}

#Preview {
    StartView()
}
