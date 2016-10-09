//
//  ViewController.swift
//  GCD
//
//  Created by Weibin LUO on 10/9/16.
//  Copyright © 2016 Weibin LUO. All rights reserved.
//

import UIKit

typealias Task = (_ cancel : Bool) -> Void


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        GCD_1()
//        GCD_2()
    }


    
    
    func GCD_2() -> () {
        
        let time: TimeInterval = 2.0
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + time) {

            print("Delay in 2 secs")
        }
    }
    
    func GCD_1() -> () {
        
        let workingQueue = DispatchQueue(label: "my_queue")
        
        workingQueue.async {
            
            print("Workinwg hard...")
            
            Thread.sleep(forTimeInterval: 2)
            
            DispatchQueue.main.async {
                
                print("Finish the job")
            }
        }
    }
    
    
    

}

