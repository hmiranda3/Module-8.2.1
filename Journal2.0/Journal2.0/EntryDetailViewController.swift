//
//  EntryDetailViewController.swift
//  Journal2.0
//
//  Created by Habib Miranda on 5/18/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController {

    @IBOutlet weak var entryTitleTextField: UITextField!
    @IBOutlet weak var bodyTextField: UITextView!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let entry = entry {
            updateWith(entry)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateWith(entry: Entry) {
        self.navigationItem.title = entry.title
        bodyTextField.text = entry.bodyText
        entryTitleTextField.text = entry.title
    }
    
    // MARK: -Action Buttons
    
    @IBAction func clearButtonTapped(sender: AnyObject) {
        bodyTextField.text = ""
        entryTitleTextField.text = ""
    }

    @IBAction func saveButtonTapped(sender: AnyObject) {
        guard let entry = entry else {
            let newEntry = Entry(timeStamp: NSDate(), title: entryTitleTextField.text ?? "", bodyText: bodyTextField.text ?? "")
            EntryController.sharedController.addEntry(newEntry)
            self.navigationController?.popToRootViewControllerAnimated(true)
            return
        }
        entry.title = entryTitleTextField.text ?? ""
        entry.bodyText = bodyTextField.text ?? ""
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
