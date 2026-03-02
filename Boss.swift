// Boss.swift

import Foundation

class Boss {
    var name: String
    var health: Int
    var specialAttacks: [String]

    init(name: String, health: Int, specialAttacks: [String]) {
        self.name = name
        self.health = health
        self.specialAttacks = specialAttacks
    }

    func performSpecialAttack() -> String {
        guard !specialAttacks.isEmpty else { return "No special attacks available." }
        let attack = specialAttacks.randomElement()!
        return "\(name) performed a \(attack) attack!"
    }

    func takeDamage(_ amount: Int) {
        health -= amount
        if health < 0 {
            health = 0
        }
    }

    func isAlive() -> Bool {
        return health > 0
    }
}