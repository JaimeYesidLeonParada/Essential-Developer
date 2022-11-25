//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Jaime Yesid Leon Parada on 7/09/22.
//

import Foundation

public protocol HTTPClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>
    /// The competion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropiate threads, if needed.
    func get(from url: URL, completion: @escaping (Result) -> Void)
}
