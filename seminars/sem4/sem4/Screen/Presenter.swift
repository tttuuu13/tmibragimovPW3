//
//  Presenter.swift
//  sem4
//
//  Created by тимур on 22.10.2024.
//
import UIKit


final class Presenter: PresentationLogic {
    weak var view: ViewController?
    
    func presentStart(_ response: Model.Start.Response) {
        view?.displayStart()
    }
    
    func presentOther(_ response: Model.Other.Response) {
        view?.displayOther()
    }
    
    func routeTo() {
        view?.navigationController?.pushViewController(UIViewController(), animated: true)
    }
    
    
}
