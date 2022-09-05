//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Jaime Yesid Leon Parada on 5/09/22.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTest: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
                
        XCTAssertNil(client.requestedURL)
    }
}
