//
//  ViewController.swift
//  Dicee
//
//  Created by Arash Farahmandi on 9/20/1397 AP.
//  Copyright © 1397 1To100Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6",]
    var index1:Int=0
    var index2:Int=0
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBAction func rollButtonPressed(_ sender: Any) {
        ChangeDice()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChangeDice()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        ChangeDice()
    }
    func ChangeDice() {
        index1 = Int.random(in: 0 ... 5)
        index2 = Int.random(in: 0 ... 5)
        
        //print(index1)
        
        diceImageView1.image = UIImage(named: diceArray[index1])
        diceImageView2.image = UIImage(named: diceArray[index2])
    }

}

