//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Jaime Yesid Leon Parada on 5/09/22.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

extension LoadFeedResult: Equatable where Error: Equatable {}

public protocol FeedLoadeer {
    associatedtype Error: Swift.Error
    
    func load(completion: @escaping (LoadFeedResult<Error>) -> Void)
}
