//
//  ViewController.swift
//  008-构造函数
//
//  Created by Weibin LUO on 10/4/16.
//  Copyright © 2016 Weibin LUO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 实例化 person
        let p = Person()
        
        print(p.name)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

