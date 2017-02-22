//
//  ViewController.swift
//  Onboarding
//
//  Created by Weibin on 2/21/17.
//  Copyright © 2017 Weibin Luo. All rights reserved.
//

import UIKit
import PaperOnboarding

class ViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate {

    @IBOutlet weak var onboardingView: OnboardingView!
    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboardingView.dataSource = self
        onboardingView.delegate = self
    }
    
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        let backgroundColorOne = UIColor(red: 217 / 255, green: 72 / 255, blue: 89 / 255, alpha: 1)
        let backgroundColorTwo = UIColor(red: 106 / 255, green: 166 / 255, blue: 211 / 255, alpha: 1)
        let backgroundColorThree = UIColor(red: 168 / 255, green: 200 / 255, blue: 78 / 255, alpha: 1)
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 24)!
        let descriptionFont = UIFont(name: "AvenirNext-Regular", size: 18)!
        
        return [
            ("rocket", "A Great Rocket Start", "Jujubes candy canes biscuit sweet roll. Ice cream sweet roll chocolate danish. Apple pie bonbon sugar plum ice cream.", "", backgroundColorOne, UIColor.white, UIColor.white, titleFont, descriptionFont),
            
            ("brush", "Design your Experience", "Jujubes candy canes biscuit sweet roll. Ice cream sweet roll chocolate danish. Apple pie bonbon sugar plum ice cream.", "", backgroundColorTwo, UIColor.white, UIColor.white, titleFont, descriptionFont),
            
            ("notification", "Stay Up To Date", "Get notifies of important updates.", "", backgroundColorThree, UIColor.white, UIColor.white, titleFont, descriptionFont)
            ][index]
        
    }
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
        
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index == 1 {
            if self.getStartedButton.alpha == 1 {
                UIView.animate(withDuration: 0.2, animations: {
                    self.getStartedButton.alpha = 0
                })
            }
        }
        
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        if index == 2 {
            UIView.animate(withDuration: 0.4, animations: { 
                self.getStartedButton.alpha = 1
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

