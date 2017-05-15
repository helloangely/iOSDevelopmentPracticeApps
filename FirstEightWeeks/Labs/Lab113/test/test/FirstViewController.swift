//
//  FirstViewController.swift
//  test
//
//  Created by Philip, Angely on 10/5/16.
//  Copyright © 2016 Philip, Angely. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var teamLeaderLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refreshFields() {
        let myDefaults = NSUserDefaults.standardUserDefaults()
        teamLeaderLabel.text = myDefaults.stringForKey(teamLeaderKey)
        myDefaults.synchronize()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        refreshFields()
    }
    
    
}

