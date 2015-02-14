//
//  ViewController.swift
//  Controlling the Keyboard
//
//  Created by Peter & Liz  on 2/12/15.
//  Copyright (c) 2015 P&L Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var text: UITextField!
    
    @IBOutlet var label: UILabel!
    
    @IBAction func button(sender: AnyObject) {
    
        label.text = text.text
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.text.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {

        self.view.endEditing(true)
        
    }
    
    
    func textFieldShouldReturn (textField: UITextField!) -> Bool {
    
        textField.resignFirstResponder()
        
        return true
        
    }

}

