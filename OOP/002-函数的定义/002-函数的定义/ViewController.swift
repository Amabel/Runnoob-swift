//
//  ViewController.swift
//  002-函数的定义
//
//  Created by Weibin LUO on 10/3/16.
//  Copyright © 2016 Weibin LUO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(sum1(num1: 10, num2: 50))
    }

    
    // MARK: 外部参数
    func sum1(num1 x: Int, num2 y: Int) -> Int {
        return x + y
    }
    
    // MARK: 函数定义
    func sum(x: Int, y: Int) -> Int {
        return x + y
    }


}

