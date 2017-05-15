//
//  FirstViewController.swift
//  FinalProject
//
//  Created by Philip, Angely on 10/3/16.
//  Copyright © 2016 Philip, Angely. All rights reserved.
//

import UIKit

class TodoListViewController: UIViewController {
    
    @IBOutlet var sunday: UILabel!
    @IBOutlet var monday: UILabel!
    @IBOutlet var tuesday: UILabel!
    @IBOutlet var wednesday: UILabel!
    @IBOutlet var thursday: UILabel!
    @IBOutlet var friday: UILabel!
    @IBOutlet var saturday: UILabel!
    
    @IBOutlet var userLabel: UILabel!

    @IBOutlet var event1: UILabel!
    @IBOutlet var event2: UILabel!
    @IBOutlet var event3: UILabel!
    @IBOutlet var event4: UILabel!
    @IBOutlet var event5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func refreshFields() {
        let myDefaults = NSUserDefaults.standardUserDefaults()
        userLabel.text = myDefaults.stringForKey(userKey)
        myDefaults.synchronize()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        refreshFields()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

