//
//  Interactor.swift
//  sem4
//
//  Created by тимур on 22.10.2024.
//

final class Interactor: BusinessLogic {
    private let presenter: PresentationLogic
    
    init(presenter: PresentationLogic) {
        self.presenter = presenter
    }
    
    func loadStart(_ request: Model.Start.Request) {
        presenter.presentStart(Model.Start.Response())
    }
    
    func loadOther(_ request: Model.Other.Request) {
        presenter.presentOther(Model.Other.Response())
    }
    
    
}
