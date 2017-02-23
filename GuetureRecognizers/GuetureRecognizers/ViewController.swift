//
//  ViewController.swift
//  GuetureRecognizers
//
//  Created by Weibin on 2017/02/23.
//  Copyright © 2017 Weibin Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(labelTaped(recognizer:)))
        tapGestureRecognizer.numberOfTapsRequired = 1
        
        textLabel.isUserInteractionEnabled = true
        textLabel.addGestureRecognizer(tapGestureRecognizer)
    }
    
    func labelTaped(recognizer: UITapGestureRecognizer) {
        print("Label taped")
    }
    
    @IBAction func imageSwiped(_ sender: Any) {
        print("Image was swiped")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

