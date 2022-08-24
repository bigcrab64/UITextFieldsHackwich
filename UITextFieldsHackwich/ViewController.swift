//
//  ViewController.swift
//  UITextFieldsHackwich
//
//  Created by De La Torre, Julian - Student on 8/24/22.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {

   
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        nameLabel.text = TextField.text
        TextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextField.delegate = self
        
        func textFieldShouldReturn(textField: UITextField) -> Bool {
            nameLabel.text = textField.text
            textField.resignFirstResponder()
        return true
        }
        
        
    }


}

