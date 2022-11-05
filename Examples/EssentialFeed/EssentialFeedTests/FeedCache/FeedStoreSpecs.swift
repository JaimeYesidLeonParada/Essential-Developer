//
//  FeedStoreSpecs.swift
//  EssentialFeedTests
//
//  Created by Jaime Leon Parada on 4/11/22.
//

import Foundation

typealias FailableFeedStore = FailableRetrieveFeedStoreSpecs & FailableInsertFeedStoreSpecs & FailableDeleteFeedStoreSpecs

protocol FeedStoreSpecs {
    func test_retrieve_deliversEmptyOnEmptyCache()
    func test_retrieve_hasNoSideEffectsOnEmptyCache()
    func test_retrieve_deliversFoundValuesOnNonEmptyCache()
    func test_retrieve_hasNoSideEffectsOnNonEmptyCache()
    
    func test_insert_deliversNoErrorOnEmptyCache()
    func test_insert_overridesPreviouslyInsertedCacheValues()
    func test_insert_hasNoSideEffectsOnInsertionError()
    
    func test_delete_deliversNoErrorOnNonEmptyCache()
    func test_delete_hasNoSideEffectsOnEmptyCache()
    func test_delete_deliversNoErrorOnEmptyCache()
    func test_delete_emptiesPreviouslyInsertedCache()
    
    func test_storeSideEffects_runSerially()
}

protocol FailableRetrieveFeedStoreSpecs: FeedStoreSpecs {
    func test_retrieve_deliversFailureOnRetrievalError()
    func test_retrieve_hasNoSideEffectsOnFailure()
}

protocol FailableInsertFeedStoreSpecs: FeedStoreSpecs {
    func test_insert_deliversErrorOnInsertionError()
    func test_insert_hasNoSideEffectOnInsertionError()
}

protocol FailableDeleteFeedStoreSpecs: FeedStoreSpecs {
    func test_delete_deliversErrorOnDeletionError() throws
    func test_delete_hasNoSideEffectsOnDeletionError() throws
}
