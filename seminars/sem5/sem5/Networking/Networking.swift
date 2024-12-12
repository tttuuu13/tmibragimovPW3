//
//  Networking.swift
//  sem5
//
//  Created by тимур on 05.11.2024.
//

import Foundation

protocol NetworkingLogic {
    typealias Response = ((_ response: Result<Networking.ServerResponse, Error>) -> Void)
    
    func execute(with request: Request, completion: @escaping Response)
}

enum Networking {
    struct ServerResponse {
        let data: Data?
        let response: URLResponse?
    }
}

final class BaseUrlWorker: NetworkingLogic {
    var baseUrl: String
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    private func convert(_ request: Request) -> URLRequest? {}
    
    private func generateDestinationUrl(for request: Request) -> URLRequest? {
        guard
            let url = URL(string: baseUrl),
            var components = URLComponents(url: url, resolvingAgainstBaseURL: false)
        else {
            return nil
        }
    }
}
