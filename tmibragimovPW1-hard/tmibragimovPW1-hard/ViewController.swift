//
//  ViewController.swift
//  tmibragimovPW1-hard
//
//  Created by тимур on 14.10.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var lines: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        for lineContainer in lines.arrangedSubviews {
            lineContainer.subviews.first?.layer.cornerRadius = 5
        }
        animateBottomConstraintChange()
    }
    
    func animateBottomConstraintChange() {
        self.bottomConstraint.constant += 20
        UIView.animate(withDuration: 0.5, animations: {self.view.layoutIfNeeded()}, completion: {_ in return})
    }
}

