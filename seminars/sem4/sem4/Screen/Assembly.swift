//
//  Assembly.swift
//  sem4
//
//  Created by тимур on 22.10.2024.
//
import UIKit


enum Assembly {
    static func build() -> UIViewController {
        let presenter = Presenter()
        let interactor = Interactor(presenter: presenter)
        let view = ViewController(interactor: interactor)
        presenter.view = view
        return view
    }
}
