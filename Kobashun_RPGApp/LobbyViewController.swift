//
//  ViewController.swift
//  Kobashun_RPGApp
//
//  Created by Fumiya Tanaka on 2019/01/13.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit

class LobbyViewController: UIViewController {
    
    let protagonist: Protagonist = Protagonist()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tappedToBattleScene() {
        performSegue(withIdentifier: "toBattle", sender: protagonist)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let battleVC = segue.destination as! BattleViewController
        battleVC.protagonist = self.protagonist
    }
    
}

