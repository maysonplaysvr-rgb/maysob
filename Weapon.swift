// Weapon.swift

import Foundation

// A struct representing a weapon for the Capybara
struct Weapon {
    var name: String
    var damage: Int
    var range: Double

    // Initializer for the weapon
    init(name: String, damage: Int, range: Double) {
        self.name = name
        self.damage = damage
        self.range = range
    }

    // Method to use the weapon
    func useAgainst(enemy: String) {
        print("Using \(name) against \(enemy)! It deals \(damage) damage at a range of \(range) meters.")
    }
}

// Example usage
let capybaraWeapon = Weapon(name: "Super Water Gun", damage: 15, range: 30.0)
capybaraWeapon.useAgainst(enemy: "Predator")
