//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Sonic on 27/6/23.
//

import XCTest

class LocalFeedLoader {
    init(store: FeedStore) {
        
    }
}

class FeedStore {
    var deleteCacheFeedCallCount = 0
}

class CacheFeedUseCaseTests: XCTest {
    
    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCacheFeedCallCount, 0)
    }
}
