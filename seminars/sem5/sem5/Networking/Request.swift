//
//  Request.swift
//  sem5
//
//  Created by тимур on 05.11.2024.
//

import Foundation


struct Request {
    enum Method: String {
        case get = "GET"
    }
    
    var endpoint: Endpoint
    var method: Method
    var parameters: [String: String]?
    var timeInterval: TimeInterval
    let body: Data?
    
    init(
        endpoint: Endpoint,
        method: Method = .get,
        parameters: [String: String]? = nil,
        timeInterval: TimeInterval = 0,
        body: Data? = nil
    ) {
        self.endpoint = endpoint
        self.method = method
        self.parameters = parameters
        self.timeInterval = timeInterval
        self.body = body
    }
}
