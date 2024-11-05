//
//  ViewController.swift
//  sem4
//
//  Created by тимур on 22.10.2024.
//

import UIKit

class ViewController: UIViewController {
    private let interactor: BusinessLogic
    private let button = UIButton(type: .system)
    
    init(interactor: BusinessLogic) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupUI()
        displayStart()
    }
    
    func setupUI() {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 50).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.backgroundColor = .black
    }

    func displayStart() {
        button.backgroundColor = .white
    }
    
    func displayOther() {
        
    }
}

