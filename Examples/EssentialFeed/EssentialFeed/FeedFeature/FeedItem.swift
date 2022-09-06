//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Jaime Yesid Leon Parada on 5/09/22.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
