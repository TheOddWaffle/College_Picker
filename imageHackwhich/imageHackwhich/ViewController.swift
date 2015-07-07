//
//  ViewController.swift
//  imageHackwhich
//
//  Created by Kenny on 7/7/15.
//  Copyright © 2015 EGGROLLS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {


    @IBOutlet var imageView: UIImageView!
    
    var imagePicker : UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    
    @IBAction func camerButtonTap(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            imagePicker.sourceType = .Camera
        }
        else {
            imagePicker.sourceType = .PhotoLibrary
        }
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        dismissViewControllerAnimated(true) { () -> Void in
            if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
                self.imageView.image = image
            }
        }
    }


}

