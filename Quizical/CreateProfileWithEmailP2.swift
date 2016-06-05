//
//  CreateProfileWithEmailP2.swift
//  Quizical
//
//  Created by Alex Folster on 5/28/16.
//  Copyright © 2016 Gulp. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics
import Parse
import Firebase
import FirebaseAuth

class CreateProfileWithEmailP2: UIViewController {

    var username: String = ""
    @IBOutlet weak var password: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createAccount(sender: AnyObject) {
        
        FIRAuth.auth()?.createUserWithEmail(username, password: (password?.text)!, completion: { (user, error) in
            
        })
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
