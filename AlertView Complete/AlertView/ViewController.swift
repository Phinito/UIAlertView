//
//  ViewController.swift
//  AlertView
//
//  Created by Duc Tran on 5/4/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var alertController: UIAlertController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // construct an alert View 
        alertController = UIAlertController(title: "Here's the title", message: "Hello, this is Daily Challenge", preferredStyle: .Alert)
        
        // add an action
        let alertAction = UIAlertAction(title: "Cancel", style: .Default) { (action) -> Void in
            println("Done button was pressed")
        }
        alertController?.addAction(alertAction)
        
        alertController?.addTextFieldWithConfigurationHandler({ (textField) -> Void in
            // configure the textField
            textField.placeholder = "Enter your username"
        })
        
        let alertActionForTextField = UIAlertAction(title: "Log in", style: .Default) { (action) -> Void in
            
            if let textFields = self.alertController?.textFields {
                let theTextFields = textFields as! [UITextField]
                let username = theTextFields[0].text
                println("your username is \(username)")
            }
        }
        alertController?.addAction(alertActionForTextField)
  
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.presentViewController(alertController!, animated: true, completion: nil)
    }

}
















