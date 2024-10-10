//
//  UIColor+Random.swift
//  tmibragimovPW1
//
//  Created by тимур on 10.10.2024.
//

import UIKit


extension UIColor {
    static func random() -> UIColor {
        .init(red: .random(in: 0...1),
              green: .random(in: 0...1),
              blue: .random(in: 0...1),
              alpha: .random(in: 0.5...1))
    }
    static func randomBg() -> UIColor {
        .init(red: .random(in: 0.8...1),
              green: .random(in: 0.8...1),
              blue: .random(in: 0.8...1),
              alpha: 1)
    }
}
