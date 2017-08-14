//
//  ViewController.swift
//  StopWatch
//
//  Created by Weibin on 2017/08/14.
//  Copyright © 2017年 Weibin Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    var counter = 0.0
    var timer = Foundation.Timer()
    var isplaying = false
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }

    override func viewDidLoad() {
        timeLabel.text = String(counter)
        super.viewDidLoad()
        
    }
    
    @IBAction func resetButtonDidTouch(_ sender: Any) {
        timer.invalidate()
        isplaying = false
        counter = 0
        timeLabel.text = String(counter)
        playButton.isEnabled = true
        pauseButton.isEnabled = true
    }
    
    @IBAction func playButtonDidTouch(_ sender: Any) {
        if (isplaying) {
            return
        }
        playButton.isEnabled = false
        pauseButton.isEnabled = true
        timer = Foundation.Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
        isplaying = true
    }
    
    @IBAction func pauseButtonDidTouch(_ sender: Any) {
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        timer.invalidate()
        isplaying = false
    }
    
    func updateTimer() {
        counter = counter + 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }
    
    
    
    

    


}

