//
//  ViewController.swift
//  Practice1
//
//  Created by Evan Knox on 2016-01-04.
//  Copyright © 2016 NaliApplications. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Button.layer.cornerRadius = 15
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showMessage(sender: AnyObject) {
        let alertControl = UIAlertController(title: "Welcome to my first app", message: "Hey how's it going mr awesome", preferredStyle: UIAlertControllerStyle.Alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        alertControl.addAction(alertAction)
        
        //THIS IS HOW YOU SHOW A VC
        self.presentViewController(alertControl, animated: true, completion: nil)
    }


}

