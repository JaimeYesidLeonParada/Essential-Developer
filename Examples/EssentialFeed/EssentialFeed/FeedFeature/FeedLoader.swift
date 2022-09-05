//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Jaime Yesid Leon Parada on 5/09/22.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoadeer {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
