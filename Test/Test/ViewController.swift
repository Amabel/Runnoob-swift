//
//  ViewController.swift
//  Test
//
//  Created by Weibin on 2/16/17.
//  Copyright © 2017 Weibin Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnActionSheet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("viewDidLoad")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnActionSheetDidTouch(_ sender: UIButton) {
        let alert = UIAlertController(title: "Redeploy Cassini", message: "Issue commands to Cassini's guidance system.", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: "Orbit Saturn", style: .default, handler: { (action: UIAlertAction) -> Void in
            // go into orbit around saturn
        }))
        
        alert.addAction(UIAlertAction(title: "Explore Titan", style: .default, handler: { (action: UIAlertAction) -> Void in
            //
        }))
        
            alert.addAction(UIAlertAction(title: "Closeup of Sun", style: .destructive, handler: { (action: UIAlertAction) -> Void in
            //
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction) -> Void in
            //
        }))
        
        present(alert, animated: true, completion: nil)
        
    }
    
    private func test() {
        let alert = UIAlertController(title: "Redeploy Cassini", message: "Issue commands to Cassini's guidance system.", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: "Orbit Saturn", style: .default, handler: { (action: UIAlertAction) -> Void in
            // go into orbit around saturn
        }))
        
        alert.addAction(UIAlertAction(title: "Explore Titan", style: .default, handler: { (action: UIAlertAction) -> Void in
            //
        }))
        
        alert.addAction(UIAlertAction(title: "Closeup of Sun", style: .destructive, handler: { (action: UIAlertAction) -> Void in
            //
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction) -> Void in
            //
        }))
        
        present(alert, animated: true, completion: nil)
        
        
    }
}

