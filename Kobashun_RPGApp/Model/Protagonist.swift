//
//  Protagonist.swift
//  Kobashun_RPGApp
//
//  Created by Fumiya Tanaka on 2019/01/15.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

class Protagonist: Character {
    
    var hp: Int = 10
    var status: CharacterStatus = .start
    
    init() { }
    
    func attack(kind: CharacterStatus) {
        
        switch kind {
        case .attack:
            status = .attack
            normalAttack()
        case .defence:
            status = .defence
            defence()
        case .specialAttack:
            status = .specialAttack
            specialAttack()
        default:
            // TODO: テストしたい
            break
        }
        
    }
    
    private func defence() {
        
    }
    
    private func normalAttack() {
        
    }
    
    private func specialAttack() {
        
    }
    
}
