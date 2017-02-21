//
//  ViewController.swift
//  Login
//
//  Created by Weibin on 2/20/17.
//  Copyright © 2017 Weibin Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributedString = NSAttributedString(string: "Forgot your Password?", attributes: [NSForegroundColorAttributeName : UIColor.white, NSUnderlineStyleAttributeName : 1])
        passwordButton.setAttributedTitle(attributedString, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

