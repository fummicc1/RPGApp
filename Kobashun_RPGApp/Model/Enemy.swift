//
//  Enemy.swift
//  Kobashun_RPGApp
//
//  Created by Fumiya Tanaka on 2019/01/15.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

class Enemy: Character {
    weak var parent: PlayerController?
    var hp: Int = 10
    var power: Int = 0
    var status: CharacterStatus = .start
    var isDead: Bool {
        return hp <= 0 ? true : false
    }
    var isMyTurn: Bool = false
    
    func attack(value: Int) {
        
        if value == 0 {
            
        } else if value == 1 {
            normalAttack()
            parent?.reflectStateToLabel(narration: "CPUの通常攻撃！")
        } else if value == 2 {
            specialAttack()
            parent?.reflectStateToLabel(narration: "CPUの必殺技!")
        } else if value == 3 {
        }
        
        parent?.presentTurnStateChanged()
        
    }
    
    private func normalAttack() {
        self.power = 3
        self.status = .normalAttack
        parent?.damageProtagonist()
        parent?.changeTurn()
    }
    
    private func specialAttack() {
        self.power = 8
        self.status = .specialAttack
        parent?.damageProtagonist()
        parent?.changeTurn()
    }
}
