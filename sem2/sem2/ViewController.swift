//
//  ViewController.swift
//  sem2
//
//  Created by тимур on 08.10.2024.
//

import UIKit

final class ViewController: UIViewController {
    typealias Time = UInt
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}

