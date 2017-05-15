//
//  SecondViewController.swift
//  FinalProject
//
//  Created by Philip, Angely on 10/3/16.
//  Copyright © 2016 Philip, Angely. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userText : UITextField!
    
    @IBAction func createEvent(sender: AnyObject) {
        userText.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        userText.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        tableViewArray.append(textField.text!)
        print(tableViewArray)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

