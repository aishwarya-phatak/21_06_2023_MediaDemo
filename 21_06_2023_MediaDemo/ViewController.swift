//
//  ViewController.swift
//  21_06_2023_MediaDemo
//
//  Created by Vishal Jagtap on 15/09/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var btnAudioPlayer : UIButton?
    var avPlayer : AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnPlayAudio()
    }
    
    func btnPlayAudio(){
        btnAudioPlayer = UIButton(
            frame: CGRect(
                x: 100,
                y: 100,
                width: 200,
                height: 50))
        
        btnAudioPlayer?.setTitle("Play", for:
                .normal)
        btnAudioPlayer?.backgroundColor = .lightGray
        btnAudioPlayer?.addTarget(
            self,
            action: #selector(playAudio),
            for: .touchUpInside)
        self.view.addSubview(btnAudioPlayer!)
    }
    
    @objc func playAudio(){
        let audioUrl = Bundle.main.url(forResource: "audio_file", withExtension: ".mp3")
        avPlayer = try! AVPlayer(url: audioUrl!)
        avPlayer?.play()
    }
}
