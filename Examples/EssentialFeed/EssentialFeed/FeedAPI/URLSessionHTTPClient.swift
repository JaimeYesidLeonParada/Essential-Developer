//
//  URLSessionHTTPClient.swift
//  EssentialFeed
//
//  Created by Jaime Yesid Leon Parada on 13/09/22.
//

import Foundation

public class URLSessionHTTPClient: HTTPClient {
    private let session: URLSession
    
    public init(session: URLSession = .shared) {
        self.session = session
    }
    
    private struct UnexpectedValuesRepresentation: Error {}
    
    public func get(from url: URL, completion: @escaping (HTTPClient.Result) -> Void) {
        session.dataTask(with: url) {data, response, error in
            completion(Result{
                if let data = data, let response = response as? HTTPURLResponse {
                    return (data, response)
                } else if let error = error {
                    throw error
                } else {
                    throw UnexpectedValuesRepresentation()
                }
            })
        }.resume()
    }
}
