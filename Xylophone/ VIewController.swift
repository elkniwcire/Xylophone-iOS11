//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var sounds : [String] = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    @IBAction func notePressed(_ sender: UIButton) {
        
        let soundPressed = sounds[sender.tag - 1]
        
        //credit to Matt Gibson on stack overflow
        if let soundURL = Bundle.main.url(forResource: soundPressed, withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
        
    }
    
  

}

