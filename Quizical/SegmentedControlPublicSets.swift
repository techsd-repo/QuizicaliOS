//
//  SegmentedControlPublicSets.swift
//  Quizical
//
//  Created by Alex Folster on 6/11/16.
//  Copyright © 2016 Gulp. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class SegmentedControlPublicSets: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
    
}