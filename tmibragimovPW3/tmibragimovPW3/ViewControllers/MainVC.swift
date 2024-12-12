//
//  ViewController.swift
//  tmibragimovPW2
//
//  Created by тимур on 23.10.2024.
//

import UIKit

class MainVC: UIViewController {
    var color: UIColor = Constants.defaultBackgroundColor
    private let addWishButton: UIButton = UIButton(type: .system)
    private let descriptionLabel: UILabel = UILabel()
    private let titleLabel: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        configureAddWishButton()
        configureSliders()
        configureTitle()
        configureDescription()
    }
    
    private func configureTitle() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Wish Maker"
        titleLabel.font = Constants.titleFont
        titleLabel.textColor = .black
        
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
    private func configureDescription() {
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.numberOfLines = .max
        descriptionLabel.textAlignment = .center
        descriptionLabel.text = "This is my implementation of the Wish Maker app, feel free to use sliders to change background color to your liking"
        descriptionLabel.font = Constants.descriptionFont
        descriptionLabel.textColor = .black
        
        view.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            descriptionLabel.widthAnchor.constraint(equalToConstant: 330)
        ])
    }
    
    private func configureAddWishButton() {
        view.addSubview(addWishButton)
        addWishButton.addTarget(self, action: #selector(addWishButtonTapped), for: .touchUpInside)
        addWishButton.translatesAutoresizingMaskIntoConstraints = false
        addWishButton.setTitle(Constants.buttonText, for: .normal)
        addWishButton.backgroundColor = .black.withAlphaComponent(0.2)
        addWishButton.layer.cornerRadius = 20
        
        NSLayoutConstraint.activate([
            addWishButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            addWishButton.heightAnchor.constraint(equalToConstant: 60),
            addWishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            addWishButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -1 * 10)
        ])
    }
    
    private func configureSliders() {
        let slidersVC = SlidersVC(color: Constants.defaultBackgroundColor, colorChanged: updateColor)
        view.addSubview(slidersVC.view)
        addChild(slidersVC)
        
        NSLayoutConstraint.activate([
            slidersVC.view.bottomAnchor.constraint(equalTo: addWishButton.topAnchor, constant: -20),
            slidersVC.view.heightAnchor.constraint(equalToConstant: 400),
            slidersVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            slidersVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -1 * 10)
        ])
    }
    
    private func updateColor(color: UIColor) {
        view.backgroundColor = color
    }
    
    @objc
    private func addWishButtonTapped() {
        present(WishStoringVC(), animated: true);
    }
    
    enum Constants {
        static let defaultBackgroundColor: UIColor = .white.withAlphaComponent(0.9)
        static let titleFont: UIFont = .systemFont(ofSize: 30, weight: .semibold)
        static let descriptionFont: UIFont = .systemFont(ofSize: 16, weight: .regular)
        static let buttonText: String = "My wishes"
    }
}
