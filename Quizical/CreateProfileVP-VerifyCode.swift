//
//  CreateProfileVP-VerifyCode.swift
//  Quizical
//
//  Created by Alex Folster on 5/21/16.
//  Copyright © 2016 Gulp. All rights reserved.
//

import Foundation
import UIKit
import SinchVerification

class CreateProfileVPVerifyCode: UIViewController {
    
    @IBOutlet weak var verifyCode: UITextField?
    var verification:Verification!
    
    override func viewDidLayoutSubviews() {
        let border = CALayer()
        let width = CGFloat(1.2)
        border.borderColor = UIColor.darkGrayColor().CGColor
        border.frame = CGRect(x: 0, y: (verifyCode?.frame.size.height)! - width, width:  (verifyCode?.frame.size.width)!, height: (verifyCode?.frame.size.height)!)
        
        border.borderWidth = width
        verifyCode?.layer.addSublayer(border)
        verifyCode?.layer.masksToBounds = true
    }
    
    override func viewDidLoad() {
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func verifyFinal(sender: AnyObject) {
        
        verification.verify((verifyCode?.text)!) { (success, error) in
            if success {
                //Segue here
                self.performSegueWithIdentifier("finishAccount", sender: nil)
            } else {
                print(error?.description)
            }
        }
        
    }
}