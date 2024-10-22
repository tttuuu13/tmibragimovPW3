//
//  UIView+Pin.swift
//  sem2
//
//  Created by тимур on 08.10.2024.
//

import UIKit


extension UIView {
    func pinTop(_ anchor: NSLayoutYAxisAnchor, _ const: Double) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: anchor, constant: const).isActive = true
    }
    
    func pinBottom(_ anchor: NSLayoutYAxisAnchor, _ const: Double) {
        translatesAutoresizingMaskIntoConstraints = false;
        bottomAnchor.constraint(equalTo: anchor, constant: const).isActive = true;
    }
}
