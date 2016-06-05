//
//  PageMenuController.swift
//  Quizical
//
//  Created by Alex Folster on 6/4/16.
//  Copyright © 2016 Gulp. All rights reserved.
//

import Foundation
import UIKit
import PageMenu

class PageMenuController: UIViewController {
    
    var pageMenu: CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Array to keep track of controllers in page menu
        var controllerArray : [UIViewController] = []
        
        // Create variables for all view controllers you want to put in the
        // page menu, initialize them, and add each to the controller array.
        // (Can be any UIViewController subclass)
        // Make sure the title property of all view controllers is set
        // Example:
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let MySetcontroller : UIViewController = storyboard.instantiateViewControllerWithIdentifier("mySets")
        MySetcontroller.title = "MY SETS"
        controllerArray.append(MySetcontroller)
        
        let PublicSetsController: UIViewController = storyboard.instantiateViewControllerWithIdentifier("publicSets")
        PublicSetsController.title = "PUBLIC SETS"
        controllerArray.append(PublicSetsController)
        
        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
        // Example:
        let parameters: [CAPSPageMenuOption] = [
            .MenuItemSeparatorWidth(4.3),
            .UseMenuLikeSegmentedControl(true),
            .MenuItemSeparatorPercentageHeight(0.1),
            .ViewBackgroundColor(UIColor.whiteColor()),
            .SelectionIndicatorColor(UIColor(red:0.35, green:0.95, blue:0.60, alpha:1.0)),
            .ScrollMenuBackgroundColor(UIColor.whiteColor()),
            CAPSPageMenuOption.SelectedMenuItemLabelColor(UIColor.blackColor()),
            CAPSPageMenuOption.MenuItemSeparatorColor(UIColor.whiteColor())
        ]
        
        // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 70.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        
        // Lastly add page menu as subview of base view controller view
        // or use pageMenu controller in you view hierachy as desired
        self.view.addSubview(pageMenu!.view)
        
        self.navigationController?.navigationBarHidden = false

    }
    

    
    
}