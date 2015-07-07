//
//  ViewController.swift
//  delegations
//
//  Created by Kenny on 7/6/15.
//  Copyright © 2015 EGGROLLS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBAction func endEditing(sender: AnyObject) {
    }
    @IBOutlet var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       myTextField.delegate = self
    }

    func textFieldDidBeginEditing(textField: UITextField) {
        print("The textfield is being edited")
    }


}

