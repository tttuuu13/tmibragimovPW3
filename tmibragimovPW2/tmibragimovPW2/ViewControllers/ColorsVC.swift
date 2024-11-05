//
//  ColorsView.swift
//  tmibragimovPW2
//
//  Created by тимур on 30.10.2024.
//

import Foundation
import UIKit


final class ColorsVC: UIViewController {
    var color: UIColor
    
    init(color: UIColor) {
        self.color = color
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        view.layer.cornerRadius = 12
        configureTitleAndExitButton()
        configureSliders()
    }
    
    private func configureTitleAndExitButton() {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Colors"
        title.font = .systemFont(ofSize: 17, weight: .semibold)
        view.addSubview(title)
        
        let closeButton = UIButton(type: .close)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(closeButton)
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -1 * 16),
            closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 13)
        ])
    }
    
    private func configureSliders() {
        let slidersVC = SlidersVC(color: color)
        view.addSubview(slidersVC.view)
        addChild(slidersVC)
        slidersVC.view.backgroundColor = .blue
        
        NSLayoutConstraint.activate([
            slidersVC.view.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            slidersVC.view.heightAnchor.constraint(equalToConstant: 400),
            slidersVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            slidersVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}
