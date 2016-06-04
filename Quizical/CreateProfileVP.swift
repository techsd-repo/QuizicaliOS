//
//  CreateProfileVP.swift
//  Quizical
//
//  Created by Alex Folster on 5/21/16.
//  Copyright © 2016 Gulp. All rights reserved.
//

import Foundation
import UIKit
import SinchVerification
import Crashlytics

class CreateProfileVP: UIViewController {
    
    var verification:Verification!
    let applicationKey = "585a1089-460d-49d3-8f10-399f251204ab"
    
   
    @IBOutlet weak var phoneNumber: UITextField?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let border = CALayer()
        let width = CGFloat(1.2)
        border.borderColor = UIColor.darkGrayColor().CGColor
        border.frame = CGRect(x: 0, y: (phoneNumber?.frame.size.height)! - width, width:  (phoneNumber?.frame.size.width)!, height: (phoneNumber?.frame.size.height)!)
        
        border.borderWidth = width
        phoneNumber?.layer.addSublayer(border)
        phoneNumber?.layer.masksToBounds = true
    }
    
    @IBAction func sendVerify(sender: AnyObject) {
        verification = SMSVerification(applicationKey: applicationKey, phoneNumber: phoneNumber!.text!)
        verification.initiate { (success, error) in
            if success {
                self.performSegueWithIdentifier("enterPin", sender: sender)
            } else {
                print("SINCH: " + (error?.description)!)
            }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "enterPin" {
            let enterCodeVC = segue.destinationViewController as! CreateProfileVPVerifyCode
            enterCodeVC.verification = self.verification
        }
    }
    

}