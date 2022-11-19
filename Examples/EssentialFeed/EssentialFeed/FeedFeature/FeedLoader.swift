//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Jaime Yesid Leon Parada on 5/09/22.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
