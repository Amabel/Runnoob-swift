//
//  ImageViewController.swift
//  Cassini
//
//  Created by Weibin on 10/12/16.
//  Copyright © 2016 Weibin Luo. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController, UIScrollViewDelegate {

    var imageURL: NSURL? {
        didSet {
            image = nil
            // we'll postpone our (expensive) fetch
            // until we know we're going to appear on screen
            // (we know this below in viewWillAppear)
            // otherwise why waste the resources?
            if view.window != nil {
                fetchImage()
            }
        }
    }
    
    private func fetchImage() {
        if let url = imageURL {
            // fire up the spinner
            // because we're about to fork something off on another thread
            spinner?.startAnimating()
            // put a closure on the "user initiated" system queue
            // this closure does NSData(contentsOfURL:) which blocks
            // waiting for network response
            // it's fine for it to block the "user initiated" queue
            // because that's a concurrent queue
            // (so other closures on that queue can run concurrently even as this one's blocked)
            dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0)) {
                let contentsOfURL = NSData(contentsOfURL: url) // blocks! can't be on main queue!
                // now that we got the data from the network
                // we want to put it up in the UI
                // but we can only do that on the main queue
                // so we queue up a closure here to do that
                dispatch_async(dispatch_get_main_queue()) {
                    // since it could take a long time to fetch the image data
                    // we make sure here that the image we fetched
                    // is still the one this ImageViewController wants to display!
                    // you must always think of these sorts of things
                    // when programming asynchronously
                    if url == self.imageURL {
                        if let imageData = contentsOfURL {
                            self.image = UIImage(data: imageData)
                            // image's set will stop the spinner animating
                        } else {
                            self.spinner?.stopAnimating()
                        }
                    } else {
                        // just so you can see in the console when this happens
                        print("ignored data returned from url \(url)")
                    }
                }
            }
        }
    }

    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentSize = imageView.frame.size
            // all three of the next lines of code
            // are necessary to make zooming work
            scrollView.delegate = self
            scrollView.minimumZoomScale = 0.03
            scrollView.maximumZoomScale = 1.0
        }
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    
    private var imageView = UIImageView()
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    private var image: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView?.contentSize = imageView.frame.size
            spinner?.stopAnimating()
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if image == nil {
            fetchImage()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.addSubview(imageView)
    }

}
