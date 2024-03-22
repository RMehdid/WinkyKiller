//
//  RoleManager.swift
//  WinkyKiller
//
//  Created by Samy Mehdid on 21/3/2024.
//

import Foundation

class RoleManager {
    
    private var allRoles = [Role]()
    
    private var totalPlayers: Int
    private var remainingPlayers: Int
    
    init(numberOfPlayers: Int) {
        self.totalPlayers = numberOfPlayers
        self.remainingPlayers = numberOfPlayers
    }
    
    func generateRoles(roles: [Role]) {
        
        let numKillers = totalPlayers / 5
        allRoles += Array(repeating: .killer, count: numKillers)
        
        var numSnitches = 0
        var numDames = 0
        
        if roles.contains(where: { $0 == .dame}) {
            numDames = 1
            allRoles += Array(repeating: .dame, count: numDames)
        }
        
        if roles.contains(where: { $0 == .snitch}) {
            numSnitches = 1
            allRoles += Array(repeating: .snitch, count: numSnitches)
        }
        
        let numSimples = totalPlayers - numKillers - numSnitches - numDames

        allRoles = Array(repeating: .simple, count: numSimples)
        
        // Shuffle the roles
        allRoles.shuffle()
    }
    
    func getRoleForPlayer() -> Role? {
        guard remainingPlayers > 0 else {
            print("All players have already generated their roles.")
            return nil
        }
        
        let role = allRoles.removeFirst()
        remainingPlayers -= 1
        return role
    }
}
