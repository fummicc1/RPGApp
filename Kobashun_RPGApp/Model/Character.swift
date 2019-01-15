//
//  Character.swift
//  Kobashun_RPGApp
//
//  Created by Fumiya Tanaka on 2019/01/15.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

enum CharacterStatus {
    case start
    case defence
    case attack
    case specialAttack
}

protocol Character {
    var hp: Int { get set }
    var status: CharacterStatus { get }
    var isDead: Bool { get }
    var power: Int { get }
}
