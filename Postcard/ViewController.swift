//
//  ViewController.swift
//  Postcard
//
//  Created by Denny Vuong on 24/01/2015.
//  Copyright (c) 2015 Denny Vuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMail(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessage.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessage.text = ""
        enterMessage.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    

}

