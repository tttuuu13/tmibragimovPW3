//
//  UIColor+Random.swift
//  tmibragimovPW1
//
//  Created by тимур on 10.10.2024.
//

import UIKit


extension UIColor {
    // MARK: - Generate random color.
    static func random() -> UIColor {
        .init(red: .random(in: 0...1),
              green: .random(in: 0...1),
              blue: .random(in: 0...1),
              alpha: .random(in: 0.5...0.8))
    }
    
    // MARK: - Generate random color for background.
    static func randomBg() -> UIColor {
        .init(red: .random(in: 0.9...1),
              green: .random(in: 0.9...1),
              blue: .random(in: 0.9...1),
              alpha: 1)
    }
    
    // MARK: - Generate set of unique random colors of specified length.
    static func randomUnique(amount: Int) -> Set<UIColor> {
        var colors: Set<UIColor> = []
        while colors.count < amount {
            colors.insert(random())
        }
        return colors
    }
}
