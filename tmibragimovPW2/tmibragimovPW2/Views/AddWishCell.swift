//
//  AddWishCell.swift
//  tmibragimovPW2
//
//  Created by тимур on 06.11.2024.
//

import UIKit

class AddWishCell: UITableViewCell {
    private let addWishButton: UIButton = UIButton()
    private let inputField: UITextField = UITextField()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        selectionStyle = .none
        backgroundColor = .clear
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.addArrangedSubview(inputField)
        inputField.translatesAutoresizingMaskIntoConstraints = false
        stack.addArrangedSubview(addWishButton)
        addWishButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stack)
        
        NSLayoutConstraint {[
            addWishButton.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 10),
            addWishButton.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -1 * 10),
            addWishButton.heightAnchor.constraint(equalToConstant: 40),
            addWishButton.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 10),
            addWishButton.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -1 * 10),
        ]}
    }
}
