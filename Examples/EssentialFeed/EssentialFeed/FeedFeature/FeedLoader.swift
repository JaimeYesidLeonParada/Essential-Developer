//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Jaime Yesid Leon Parada on 5/09/22.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
