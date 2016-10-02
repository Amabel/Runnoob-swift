//
//  ViewController.swift
//  004-变量和常量
//
//  Created by Weibin LUO on 10/2/16.
//  Copyright © 2016 Weibin LUO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        demo()
        
        demo1()
    }

    func demo() {
        // 1. 定义变量 var / 常量 let
        var x = 10
        x = 20
        
        print(x)
    }
    
    func demo1() {
        let x = 10
        let y = 10
        
        print(x + y)
    }


}



