//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Jaime Leon Parada on 3/12/22.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
