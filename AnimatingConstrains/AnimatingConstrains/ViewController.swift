//
//  ViewController.swift
//  AnimatingConstrains
//
//  Created by Weibin on 2017/02/27.
//  Copyright © 2017 Weibin Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    @IBOutlet weak var rightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var leftDoor: UIView!
    @IBOutlet weak var rightDoor: UIView!
    
    var doorOpen = false
    
    func triggerDoor() {
        self.view.layoutIfNeeded()
        
        UIView.animate(withDuration: 3,
                       animations: {
                        self.leftConstraint.constant = self.doorOpen ? -16 : -self.leftDoor.frame.size.width
                        self.rightConstraint.constant = self.doorOpen ? -16 : -self.rightDoor.frame.size.width
                        
                        self.view.layoutIfNeeded()
                        
        }) { (success) in
            self.doorOpen = self.doorOpen ? false : true
            self.triggerDoor()
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        triggerDoor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

