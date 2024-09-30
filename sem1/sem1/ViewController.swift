//
//  ViewController.swift
//  sem1
//
//  Created by тимур on 30.09.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var textField: UILabel!
    
    @IBAction func pressNumber(_ sender: UIButton) {
        textField.text! += (sender.titleLabel?.text)!
    }
    
}

