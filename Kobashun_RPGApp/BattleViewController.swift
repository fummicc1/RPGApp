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
    
    @IBOutlet var protagonistCommandButtons: [UIButton]!
    
    var protagonist: Protagonist!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedAttackButton() {
        protagonist.attack(kind: CharacterStatus.attack)
        putNarration(with: "主人公の通常攻撃!")
    }
    
    @IBAction func tappedSpecialAttackButton() {
        protagonist.attack(kind: CharacterStatus.specialAttack)
        putNarration(with: "主人公は必殺技を発動した！")
    }
    
    @IBAction func tappedDefenceButton() {
        protagonist.attack(kind: CharacterStatus.defence)
        putNarration(with: "主人公はディフェンスモードに入った！")
    }
    
    func putNarration(with text: String) {
        self.narrationLabel.text = text
    }
    
}
