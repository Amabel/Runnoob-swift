//
//  ViewController.swift
//  ViewControllerExample
//
//  Created by Weibin on 2017/02/24.
//  Copyright © 2017 Weibin Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showSecondVC(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        if let secondVC = sb.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController {
            
            secondVC.infoObject = "Hello World"
            self.present(secondVC, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

