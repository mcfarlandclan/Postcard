//
//  ViewController.swift
//  Postcard
//
//  Created by Jeff McFarland on 9/10/14.
//  Copyright (c) 2014 JeffMcFarland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPress(sender: UIButton) {
        // Code will evaluate when we press the button
        // This comment wil test commits
        
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        
        enterMessageTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        
        messageLabel.textColor = UIColor.redColor()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        enterNameTextField.text = ""
    }

}

