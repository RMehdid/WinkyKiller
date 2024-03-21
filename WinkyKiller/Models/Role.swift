//
//  Roles.swift
//  WinkyKiller
//
//  Created by Samy Mehdid on 21/3/2024.
//

import Foundation

protocol Role {
    var value: String { get }
}

protocol Playable: Role { }

enum Required: String, Playable, CaseIterable {
    case simple = "Simple"
    case killer = "Killer"
    
    var value: String { return self.rawValue }
}

enum Optional: String, Playable, CaseIterable {
    case dame = "Dame"
    case snitch = "Snitch"
    
    var value: String { return self.rawValue }
}

class NonPlayable: Role {
    var value = "Player"
}
