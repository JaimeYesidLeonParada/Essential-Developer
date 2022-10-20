//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Jaime Leon Parada on 20/10/22.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
