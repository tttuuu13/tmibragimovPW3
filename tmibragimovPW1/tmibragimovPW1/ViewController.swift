//
//  ViewController.swift
//  tmibragimovPW1
//
//  Created by тимур on 10.10.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var views : [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var colors = Set<UIColor>()
        while colors.count < views.count {
            colors.insert(.random())
        }
        
        for view in views {
            UIView.animate(withDuration: 0.5, animations: {
                view.backgroundColor = colors.popFirst()
                view.layer.cornerRadius = .random(in: 5...view.frame.height/2)
            })
        }
    }
    
    @IBAction func buttonWasPressed(_ sender: UIButton)
    {
        var colors = Set<UIColor>()
        while colors.count < views.count + 1 {
            colors.insert(.random())
        }
        
        for view in views {
            UIView.animate(withDuration: 0.5, animations: {
                view.backgroundColor = colors.popFirst()
                view.layer.cornerRadius = .random(in: 5...view.frame.height/2)
            })
        }
        UIView.animate(withDuration: 0.5, animations: {
            super.view.backgroundColor = .randomBg()
            sender.tintColor = colors.popFirst()
        })
    }
    
}

