//
//  PlayerController.swift
//  Kobashun_RPGApp
//
//  Created by Fumiya Tanaka on 2019/01/15.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation

class PlayerController {
    
    weak var attachedViewController: BattleViewController?
    
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
    
    func changeTurn() {
        protagonist.isMyTurn.toggle()
        enemy.isMyTurn.toggle()
    }
    
    func presentTurnStateChanged() {
        attachedViewController?.reflectTurnStateToButtons()
    }
    
    func cpuAttack() {
        enemy.attack(value: Int.random(in: 1...2))
    }
    
    func reflectStateToLabel(narration: String) {
        attachedViewController?.reflectDamageToLabel()
        attachedViewController?.putNarration(with: narration)
    }
    
}
