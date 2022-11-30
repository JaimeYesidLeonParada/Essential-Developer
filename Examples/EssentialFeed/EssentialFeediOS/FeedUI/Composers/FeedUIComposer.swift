//
//  FeedUIComposer.swift
//  EssentialFeediOS
//
//  Created by Jaime Leon Parada on 30/11/22.
//

import EssentialFeed

public final class FeedUIComposer {
    private init() {}
    
    public static func feedComposedWith(feedLoader: FeedLoader, imageLoader: FeedImageDataLoader) -> FeedViewController {
        let refreshController = FeedRefreshViewController(feedLoader: feedLoader)
        let feedController = FeedViewController(refreshController: refreshController)
        refreshController.onRefresh = { [weak feedController] feed in
            feedController?.tableModel = feed.map{ model in
                FeedImageCellController(model: model, imageLoader: imageLoader)
            }
        }
        
        return feedController
    }
}
