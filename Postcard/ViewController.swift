//
//  ViewController.swift
//  Postcard
//
//  Created by Pokrovskiy Yuriy on 29.01.15.
//  Copyright (c) 2015 Pokrovskiy Yuriy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false;
        messageLabel.text = enterNameTextField.text;
        messageLabel.textColor = UIColor.redColor();
        enterNameTextField.text = "";
        enterNameTextField.resignFirstResponder();
        sendButton.setTitle("Mail Sent", forState: UIControlState.Normal);
    }

}

