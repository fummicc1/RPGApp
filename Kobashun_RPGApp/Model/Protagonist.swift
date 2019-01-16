//
//  Protagonist.swift
//  Kobashun_RPGApp
//
//  Created by Fumiya Tanaka on 2019/01/15.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

class Protagonist: Character {
    
    weak var parent: PlayerController?
    var hp: Int = 10
    var shield: Int = 0
    var power: Int = 0
    var status: CharacterStatus = .start
    var isDead: Bool {
        return hp <= 0 ? true : false
    }
    var isMyTurn: Bool = true {
        didSet {
            if isMyTurn {
                return
            } else {
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
                    print("cpuの攻撃")
                    self.parent?.cpuAttack()
                }
            }
        }
    }
    
    init() { }
    
    func attack(kind: CharacterStatus) {
        
        switch kind {
        case .normalAttack:
            status = .normalAttack
            power = 3
        case .defence:
            status = .defence
            shield = 3
            power = 0
        case .specialAttack:
            status = .specialAttack
            power = 8
        default:
            // TODO: テストしたい
            break
        }
    }
}
