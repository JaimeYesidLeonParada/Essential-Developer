//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Jaime Yesid Leon Parada on 7/09/22.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    /// The competion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropiate threads, if needed.
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
