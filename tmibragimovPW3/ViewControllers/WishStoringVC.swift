//
//  WishStoringVC.swift
//  tmibragimovPW3
//
//  Created by тимур on 05.12.2024.
//

import Foundation
import UIKit

final class WishStoringVC: UIViewController {
    let wishStoringView = WishStoringView()
    private enum Constants {
        static let numberOfSections: Int = 2
    }
    private var wishArray: [String] = ["I wish I could fly", "I wish I could eat ice cream", "I wish I could dance", "I wish I could sing", "I wish I could swim"]

    override func loadView() {
        view = wishStoringView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wishStoringView.tableView.dataSource = self
    }
}

extension WishStoringVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return wishArray.count
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: WrittenWishCell.reuseId, for: indexPath)
            guard let wishCell = cell as? WrittenWishCell else { return cell }
            wishCell.configure(with: wishArray[indexPath.row])
            return wishCell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: AddWishCell.reuseId, for: indexPath)
            guard let addWishCell = cell as? AddWishCell else { return cell }
            addWishCell.addWish = { [weak self] wishText in
                self?.wishArray.append(wishText)
                tableView.reloadData()
            }
            return addWishCell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Constants.numberOfSections
    }
}
