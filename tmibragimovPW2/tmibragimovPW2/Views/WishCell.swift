//
//  WishCell.swift
//  tmibragimovPW2
//
//  Created by тимур on 06.11.2024.
//

import Foundation
import UIKit

final class WrittenWishCell: UITableViewCell {
    static let reuseId: String = "WrittenWishCell"
    private enum Constants {
        static let wrapColor: UIColor = .white
        static let wrapRadius: CGFloat = 16
        static let wrapOffsetV: CGFloat = 5
        static let wrapOffsetH: CGFloat = 10
        static let wishLabelOffset: CGFloat = 8
    }
    private let wishLabel: UILabel = UILabel()
    // MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configure(with wish: String) {
        wishLabel.text = wish
        wishLabel.translatesAutoresizingMaskIntoConstraints = false
        wishLabel.textAlignment = .center
    }
    private func configureUI() {
        selectionStyle = .none
        backgroundColor = .clear
        let wrap: UIView = UIView()
        addSubview(wrap)
        wrap.translatesAutoresizingMaskIntoConstraints = false
        wrap.backgroundColor = Constants.wrapColor
        wrap.layer.cornerRadius = Constants.wrapRadius
        wrap.addSubview(wishLabel)
        
        NSLayoutConstraint.activate([
            wrap.topAnchor.constraint(equalTo: topAnchor),
            wrap.bottomAnchor.constraint(equalTo: bottomAnchor),
            wrap.leadingAnchor.constraint(equalTo: leadingAnchor),
            wrap.trailingAnchor.constraint(equalTo: trailingAnchor),
            wishLabel.leadingAnchor.constraint(equalTo: wrap.leadingAnchor),
            wishLabel.trailingAnchor.constraint(equalTo: wrap.trailingAnchor),
            wishLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
