//
//  CoreDataFeedStore.swift
//  EssentialFeed
//
//  Created by Sonic on 28/6/23.
//

import Foundation

public final class CoreDataFeedStore: FeedStore {
    public init() {}
    
    public func retrieve(completion: @escaping RetrievalCompletion) {
        completion(.empty)
    }
    
    public func insert(_ items: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {
        
    }
    
    public func deleteCachedFeed(completion: @escaping DeletionCompletion) {
        
    }
}
