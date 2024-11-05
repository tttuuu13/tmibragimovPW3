//
//  ViewController.swift
//  tmibragimovPW2
//
//  Created by тимур on 23.10.2024.
//

import UIKit

class ViewController: UIViewController {
    var color: UIColor = .white.withAlphaComponent(0.9)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        configureTitle()
        configureDescription()
        configureButton()
    }
    private func configureTitle() {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Wish Maker"
        title.font = .systemFont(ofSize: 30, weight: .semibold)
        title.textColor = .white
        
        view.addSubview(title)
        
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ])
    }
    
    private func configureDescription() {
        let description = UILabel()
        description.translatesAutoresizingMaskIntoConstraints = false
        description.numberOfLines = .max
        description.textAlignment = .center
        description.text = "Click the picker button in the bottom right corner to change the background color"
        description.font = .systemFont(ofSize: 16, weight: .regular)
        description.textColor = .white
        
        view.addSubview(description)
        
        NSLayoutConstraint.activate([
            description.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            description.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            description.widthAnchor.constraint(equalToConstant: 330)
        ])
    }
    
    private func configureButton() {
        let button = UIButton(type: .custom)
        button.addTarget(self, action: #selector(showPicker), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "pickerButton"), for: .normal)
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70)
        ])
    }
    
    @objc func showPicker() {
        let colorsVC = ColorsVC(color: color)
        colorsVC.modalPresentationStyle = .overCurrentContext
        //self.modalPresentationStyle = .overCurrentContext
        self.present(colorsVC, animated: true)
    }
}
