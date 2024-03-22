//
//  Roles.swift
//  WinkyKiller
//
//  Created by Samy Mehdid on 21/3/2024.
//

import Foundation

enum Role: String {
    case player = "Player"
    case simple = "Simple"
    case killer = "Killer"
    case dame = "Dame"
    case snitch = "Snitch"
    
    static var required: [Role] = [.simple, .killer]
    
    static var optional: [Role] = [.dame, .snitch]
}
