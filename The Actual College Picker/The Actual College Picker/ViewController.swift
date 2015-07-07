//
//  ViewController.swift
//  The Actual College Picker
//
//  Created by Kenny on 7/6/15.
//  Copyright © 2015 EGGROLLS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var editButton: UIBarButtonItem!
    @IBOutlet var tableView: UITableView!
    var colleges : [College] = []
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colleges.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = colleges[indexPath.row].name
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            colleges.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let college = colleges[sourceIndexPath.row]
        colleges.removeAtIndex((sourceIndexPath.row))
        colleges.insert(college, atIndex: destinationIndexPath.row)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        editButton.tag = 0
        colleges.append(College(name: "Stanford", location: "California", enrollment: 58435, image: UIImage(named:"stanford")!, website: NSURL(string: "http://stanford.edu")!))
        colleges.append(College(name: "NorthWestern", location: "Illinois", enrollment: 32148, image: UIImage(named:"NW")!, website: NSURL(string: "http://stanford.edu")!))
        colleges.append(College(name: "NYU", location: "New York", enrollment: 3421432, image: UIImage(named:"NYU")!, website: NSURL(string: "http://stanford.edu")!))
        tableView.reloadData()
    }
    
    
    @IBAction func onTappedEditButton(sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Add College", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addTextFieldWithConfigurationHandler { (textField) -> Void in
            textField.placeholder = "Add College Here"
        }
        let cancelAction = UIAlertAction(title: "cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(cancelAction)
        
        let addAction = UIAlertAction(title: "Add", style: UIAlertActionStyle.Default) { (action) -> Void in
            let collegeTextField = alert.textFields![0] as UITextField
            self.colleges.append(College(name: collegeTextField.text!))
            self.tableView.reloadData()
        }
        alert.addAction(addAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func onEditButtonTapped(sender: UIBarButtonItem) {
        if sender.tag == 0{
            tableView.editing = true
            sender.tag = 1
        }
        else {
            tableView.editing = false
            sender.tag = 0
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! DetailViewController
        let index = tableView.indexPathForSelectedRow?.row
        dvc.college = colleges[index!]
    }
        

}

