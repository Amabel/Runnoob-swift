//
//  ViewController.swift
//  002-第一个应用程序
//
//  Created by Weibin LUO on 10/2/16.
//  Copyright © 2016 Weibin LUO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 1. 创建一个视图
        let v = UIView(frame: CGRect(x: 0, y: 20, width: 100, height: 100))
        
        // 设置背景颜色
        v.backgroundColor = UIColor.redColor()
        
        // 添加到当前视图
        view.addSubview(v)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

