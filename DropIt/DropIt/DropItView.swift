//
//  DropItView.swift
//  DropIt
//
//  Created by Weibin on 10/26/16.
//  Copyright © 2016 Weibin Luo. All rights reserved.
//

import UIKit

class DropItView: NamedBeziierPathsView, UIDynamicAnimatorDelegate {

    private lazy var animator: UIDynamicAnimator = {
        let animator = UIDynamicAnimator(referenceView: self)
        animator.delegate = self
        return animator
    }()
    
    func dynamicAnimatorDidPause(animator: UIDynamicAnimator) {
        removeCompletedRow()
    }
    
    private let dropBehavior = FallingObjectBehavior()
    
    var animating: Bool = false {
        didSet {
            if animating {
                animator.addBehavior(dropBehavior)
            } else {
                animator.removeBehavior(dropBehavior)
            }
        }
    }
    
    private struct PathNames {
        static let MiddleBarrier = "Middle Barrier"
        static let Attachment = "Attachment"
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let path = UIBezierPath(ovalInRect: CGRect(center: bounds.mid, size: dropSize))
        dropBehavior.addBarrier(path, named: PathNames.MiddleBarrier)
        bezierPaths[PathNames.MiddleBarrier] = path
    }
    
    func grabDrop(recognizer: UIPanGestureRecognizer) {
        let gesturePoint = recognizer.locationInView(self)
        switch recognizer.state {
        case .Began:
            if let dropToAttachTo = lastDrop where dropToAttachTo.superview != nil {
                attachment = UIAttachmentBehavior(item: dropToAttachTo, attachedToAnchor: gesturePoint)
            }
            lastDrop = nil
        case .Changed:
            attachment?.anchorPoint = gesturePoint
        default:
            attachment = nil
        }
    }
    
    private let dropsPerRow = 10
    private var dropSize: CGSize {
        let size = bounds.size.width / CGFloat(dropsPerRow)
        return CGSize(width: size, height: size)
    }
    
    func addDrop() {
        var frame = CGRect(origin: CGPoint.zero, size: dropSize)
        frame.origin.x = CGFloat.random(dropsPerRow) * dropSize.width
        
        let drop = UIView(frame: frame)
        drop.backgroundColor = UIColor.random
        
        addSubview(drop)
        dropBehavior.addItem(drop)
        lastDrop = drop
    }
    
    private var attachment: UIAttachmentBehavior? {
        willSet {
            if attachment != nil {
                animator.removeBehavior(attachment!)
                bezierPaths[PathNames.Attachment] = nil
            }
        }
        didSet {
            if attachment != nil {
                animator.addBehavior(attachment!)
                attachment!.action = { [unowned self] in
                    if let attachedDrop = self.attachment!.items.first as? UIView {
                        self.bezierPaths[PathNames.Attachment] = UIBezierPath.lineFrom(self.attachment!.anchorPoint, to: attachedDrop.center)
                    }
                }
            }
        }
    }
    
    private var lastDrop: UIView?
    
    private func removeCompletedRow()
    {
        var dropsToRemove = [UIView]()
        
        var hitTestRect = CGRect(origin: bounds.lowerLeft, size: dropSize)
        repeat {
            hitTestRect.origin.x = bounds.minX
            hitTestRect.origin.y -= dropSize.height
            var dropsTested = 0
            var dropsFound = [UIView]()
            while dropsTested < dropsPerRow {
                if let hitView = hitTest(hitTestRect.mid) where hitView.superview == self {
                    dropsFound.append(hitView)
                } else {
                    break
                }
                hitTestRect.origin.x += dropSize.width
                dropsTested += 1
            }
            if dropsTested == dropsPerRow {
                dropsToRemove += dropsFound
            }
        } while dropsToRemove.count == 0 && hitTestRect.origin.y > bounds.minY
        
        for drop in dropsToRemove {
            dropBehavior.removeItem(drop)
            drop.removeFromSuperview()
        }
    }

}
