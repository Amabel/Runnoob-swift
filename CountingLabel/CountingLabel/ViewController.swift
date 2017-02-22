//
//  ViewController.swift
//  CountingLabel
//
//  Created by Weibin on 2017/02/22.
//  Copyright © 2017 Weibin Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countingLabel: CountingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        countingLabel.count(fromValue: 0, to: 200, withDuration: 20, andAnimationType: .EaseIn, andCounterType: .Int)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

