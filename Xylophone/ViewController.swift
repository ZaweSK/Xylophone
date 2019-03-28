//
//  ViewController.swift
//  Xylophone
//
//  Created by Peter on 28/03/2019.
//  Copyright © 2019 Excellence. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var selectedSoundFileName: String = ""
    var audioPlayer: AVAudioPlayer!
    let soundFiles = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
      
    }
    
    func playSound(){
        let url = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
        }catch {
            print(error)
        }
        audioPlayer.play()
    }
    
    
    @IBAction func notePressed(_ sender: UIButton){
        selectedSoundFileName = soundFiles[sender.tag - 1]
        playSound()
    }

}

