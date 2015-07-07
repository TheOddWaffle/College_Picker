//
//  modalViewController.swift
//  modalhackwhich
//
//  Created by Kenny on 7/7/15.
//  Copyright © 2015 EGGROLLS. All rights reserved.
//

import UIKit

class modalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func onDoneButtonTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
