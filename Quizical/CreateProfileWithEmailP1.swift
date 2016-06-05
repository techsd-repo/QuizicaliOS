//
//  CreateProfileWithEmail.swift
//  Quizical
//
//  Created by Alex Folster on 5/28/16.
//  Copyright © 2016 Gulp. All rights reserved.
//

import Foundation
import UIKit

class CreateProfileWithEmailP1: UIViewController {
    
    @IBOutlet weak var emailField: UITextField?
    
    override func viewDidLoad() {
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let border = CALayer()
        let width = CGFloat(1.2)
        border.borderColor = UIColor.darkGrayColor().CGColor
        border.frame = CGRect(x: 0, y: (emailField?.frame.size.height)! - width, width:  (emailField?.frame.size.width)!, height: (emailField?.frame.size.height)!)
        
        border.borderWidth = width
        emailField?.layer.addSublayer(border)
        emailField?.layer.masksToBounds = true

    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func Continue(sender: AnyObject) {
        performSegueWithIdentifier("passCreate", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "passCreate" {
           let pageVC = segue.destinationViewController as! CreateProfileWithEmailP2
            pageVC.username = (emailField?.text)!
        }
    }
   
}
