//
//  DropItViewController.swift
//  DropIt
//
//  Created by Weibin on 10/26/16.
//  Copyright © 2016 Weibin Luo. All rights reserved.
//

import UIKit

class DropItViewController: UIViewController {
    
    @IBOutlet weak var gameView: DropItView! {
        didSet {
            gameView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addDrop(_:))))
            gameView.addGestureRecognizer(UIPanGestureRecognizer(target: gameView, action: #selector(DropItView.grabDrop(_:))))

        }
    }
    
    func addDrop(recognizer: UITapGestureRecognizer) {
        if recognizer.state == .Ended {
            gameView.addDrop()
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        gameView.animating = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewDidAppear(animated)
        gameView.animating = false
    }
   

}
