//
//  ScaleSegue.swift
//  CustomSegues
//
//  Created by Weibin on 2017/02/25.
//  Copyright © 2017 Weibin Luo. All rights reserved.
//

import UIKit

class ScaleSegue: UIStoryboardSegue {

    override func perform() {
        scale()
    }
    
    func scale() {
        let toViewController = self.destination
        let fromViewController = self.source
        
        let containerView = fromViewController.view.superview
        let originalCenter = fromViewController.view.center
        
        toViewController.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        toViewController.view.center = originalCenter
        
        containerView?.addSubview(toViewController.view)
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: .curveEaseInOut,
            animations: {
                toViewController.view.transform = CGAffineTransform.identity
            },
            completion: { success in
                fromViewController.present(toViewController, animated: false, completion: nil)
            }
        )
    }
}
