//
//  ViewController.swift
//  CheckMark
//
//  Created by Weibin on 2017/02/24.
//  Copyright © 2017 Weibin Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BEMCheckBoxDelegate {

    @IBOutlet weak var box1: BEMCheckBox!
    @IBOutlet weak var box2: BEMCheckBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        box1.delegate = self
        box2.delegate = self
       
//        let box = BEMCheckBox(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//        self.view.addSubview(box)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        box1.setOn(true, animated: true)
        
    }
    
    func didTap(_ checkBox: BEMCheckBox) {
        print("User taped \(checkBox.tag): \(checkBox.on)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

