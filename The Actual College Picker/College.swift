//
//  College.swift
//  The Actual College Picker
//
//  Created by Kenny on 7/6/15.
//  Copyright © 2015 EGGROLLS. All rights reserved.
//

import UIKit

class College: NSObject {
    var name = ""
    var location = ""
    var enrollment = 0
    var website = NSURL(string: "http://google.com")
    var image = UIImage(named: "defualt")
    
    convenience init(name: String, location: String, enrollment: Int, image: UIImage, website: NSURL) {
        self.init()
        self.name = name
        self.location = location
        self.enrollment = enrollment
        self.image = image
        self.website = website
    }
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }

}
