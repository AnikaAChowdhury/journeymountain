//
//  SoundPlayer.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 11/10/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?
var backgroundAudioPlayer: AVAudioPlayer?


func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer (contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play ()
        } catch {
            print ("ERROR: Could not find and play the sound file!")
        }
    }
}

func playBackgroundSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            backgroundAudioPlayer = try AVAudioPlayer (contentsOf: URL(fileURLWithPath: path))
            backgroundAudioPlayer?.numberOfLoops =  -1
            backgroundAudioPlayer?.play ()
            
        } catch {
            print ("ERROR: Could not find and play the sound file!")
        }
    }
}



