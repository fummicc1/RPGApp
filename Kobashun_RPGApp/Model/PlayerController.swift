//
//  PlayerController.swift
//  Kobashun_RPGApp
//
//  Created by Fumiya Tanaka on 2019/01/15.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

class PlayerController {
    
    static let shared = PlayerController()
    
    private init() { }
    
    let protagonist: Protagonist = Protagonist()
    var enemy: Enemy = Enemy()
    
    func damageProtagonist() {
        protagonist.hp -= enemy.power
    }
    
    func damageEnemy() {
        enemy.hp -= protagonist.power
    }
    
}
