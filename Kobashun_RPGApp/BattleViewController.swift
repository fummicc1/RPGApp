//
//  BattleViewController.swift
//  Kobashun_RPGApp
//
//  Created by Fumiya Tanaka on 2019/01/15.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit

class BattleViewController: UIViewController {
    
    @IBOutlet var protagonistImageView: UIImageView!
    @IBOutlet var protagonistHPLabel: UILabel!
    @IBOutlet var narrationLabel: UILabel!
    @IBOutlet var enemyImageView: UIImageView!
    @IBOutlet var enemyHPLabel: UILabel!
    
    @IBOutlet var protagonistCommandButtons: [UIButton]!
    
    var protagonist: Protagonist = PlayerController.shared.protagonist
    var enemy = PlayerController.shared.enemy
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    @IBAction func tappedAttackButton() {
        protagonist.attack(kind: CharacterStatus.normalAttack)
        PlayerController.shared.damageEnemy()
        putNarration(with: "主人公の通常攻撃!")
        reflectDamageToLabel()
        goNextTurn()
        reflectTurnStateToButtons()
    }
    
    @IBAction func tappedSpecialAttackButton() {
        protagonist.attack(kind: CharacterStatus.specialAttack)
        PlayerController.shared.damageEnemy()
        putNarration(with: "主人公は必殺技を発動した！")
        reflectDamageToLabel()
        goNextTurn()
        reflectTurnStateToButtons()
    }
    
    @IBAction func tappedDefenceButton() {
        protagonist.attack(kind: CharacterStatus.defence)
        putNarration(with: "主人公はディフェンスモードに入った！")
        goNextTurn()
        reflectTurnStateToButtons()
    }
    
    func putNarration(with text: String) {
        self.narrationLabel.text = text
    }
    
    private func goNextTurn() {
        PlayerController.shared.changeTurn()
    }
    
    func reflectTurnStateToButtons() {
        protagonistCommandButtons.forEach { (button) in
            button.isEnabled = protagonist.isMyTurn
        }
    }
    
    func reflectDamageToLabel() {
        protagonistHPLabel.text = String(protagonist.hp) + " / 10"
        enemyHPLabel.text = String(enemy.hp) + " / 10"
    }
    
    private func setup() {
        PlayerController.shared.attachedViewController = self
        enemy.parent = PlayerController.shared
        protagonist.parent = PlayerController.shared
    }
    
}
