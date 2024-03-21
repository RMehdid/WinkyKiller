//
//  RoleManager.swift
//  WinkyKiller
//
//  Created by Samy Mehdid on 21/3/2024.
//

import Foundation

class RoleManager: ObservableObject {
    
    @Published var allRoles = [Playable]()
    private var remainingPlayers: Int
    
    init(numberOfPlayers: Int) {
        remainingPlayers = numberOfPlayers
        assignRoles(numberOfPlayers: numberOfPlayers)
    }
    
    private func assignRoles(numberOfPlayers: Int) {
        // Calculate number of killers, snitches, dames, and simples
        let numKillers = numberOfPlayers / 5
        let numSnitches = min(1, numberOfPlayers)
        let numDames = min(1, numberOfPlayers)
        let numSimples = numberOfPlayers - numKillers - numSnitches - numDames
        
        // Create an array of all roles
        allRoles = Array(repeating: Required.simple, count: numSimples)
        allRoles += Array(repeating: Required.killer, count: numKillers)
        allRoles += Array(repeating: Optional.dame, count: numDames)
        allRoles += Array(repeating: Optional.snitch, count: numSnitches)
        
        // Shuffle the roles
        allRoles.shuffle()
    }
    
    func generateRoleForNextPlayer() -> Playable? {
        guard remainingPlayers > 0 else {
            print("All players have already generated their roles.")
            return nil
        }
        
        let role = allRoles.removeFirst()
        remainingPlayers -= 1
        return role
    }
}
