//
//  DetailViewController.swift
//  My College Builder
//
//  Created by Kenny on 7/6/15.
//  Copyright © 2015 EGGROLLS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet var cityTextField: UITextField!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var populationTextField: UITextField!
    @IBOutlet var stateTextField: UITextField!
    
    var city : City!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityTextField.text = city.name
        stateTextField.text = city.state
        populationTextField.text = String(city.population)
        imageView.image = city.image

    }

    @IBAction func onTappedSaveButton(sender: AnyObject) {
        city.name = cityTextField.text!
        city.state = stateTextField.text!
        city.population = Int(populationTextField.text!)!
    }
    

}
