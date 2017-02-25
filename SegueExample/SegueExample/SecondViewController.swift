//
//  SecondViewController.swift
//  SegueExample
//
//  Created by Weibin on 2017/02/25.
//  Copyright © 2017 Weibin Luo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var infoObject: String?

    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if infoObject != nil {
            infoLabel.text = infoObject
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
