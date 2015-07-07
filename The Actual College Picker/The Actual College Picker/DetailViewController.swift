//
//  DetailViewController.swift
//  The Actual College Picker
//
//  Created by Kenny on 7/7/15.
//  Copyright © 2015 EGGROLLS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet var collegeTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var enrollmentTextField: UITextField!
    @IBOutlet var imageView: UIImageView!
    
    var college : College!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collegeTextField.text = college.name
        locationTextField.text = college.location
        enrollmentTextField.text = String(college.enrollment)
        imageView.image = college.image
    }
    
    
    @IBAction func saveButton(sender: AnyObject) {
        college.name = collegeTextField.text!
        college.location = locationTextField.text!
        college.enrollment = Int(enrollmentTextField.text!)!
    }

}
