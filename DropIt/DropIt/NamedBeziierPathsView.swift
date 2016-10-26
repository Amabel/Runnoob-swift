//
//  NamedBeziierPathsView.swift
//  DropIt
//
//  Created by Weibin on 10/26/16.
//  Copyright © 2016 Weibin Luo. All rights reserved.
//

import UIKit

class NamedBeziierPathsView: UIView {

    var bezierPaths = [String: UIBezierPath]() { didSet { setNeedsDisplay() } }
    
    override func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }

}
