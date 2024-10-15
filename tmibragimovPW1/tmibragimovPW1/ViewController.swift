//
//  ViewController.swift
//  tmibragimovPW1
//
//  Created by тимур on 10.10.2024.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    let animationDuration: TimeInterval = 0.5
    @IBOutlet var views : [UIView]!
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        var colors = UIColor.randomUnique(amount: views.count)
        
        for view in views {
            UIView.animate(withDuration: animationDuration, animations: {
                view.backgroundColor = colors.popFirst()
                view.layer.cornerRadius = .random(in: 5...view.frame.height/2)
            })
        }
    }
    
    // MARK: - Button Action
    @IBAction func buttonWasPressed(_ sender: UIButton)
    {
        sender.isEnabled = false
        var colors = UIColor.randomUnique(amount: views.count + 1)
        
        UIView.animate(withDuration: animationDuration, animations: {
            super.view.backgroundColor = .randomBg()
            sender.tintColor = colors.popFirst()
        })
        
        for (index, view) in views.enumerated() {
            UIView.animate(withDuration: animationDuration, animations: {
                view.backgroundColor = colors.popFirst()
                view.layer.cornerRadius = .random(in: 5...view.frame.height/2)
            }, completion: {_ in
                if index == self.views.count - 1 {
                    sender.isEnabled = true
                }
            })
        }
    }
    
}

