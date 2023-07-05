//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Sonic on 5/7/23.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
