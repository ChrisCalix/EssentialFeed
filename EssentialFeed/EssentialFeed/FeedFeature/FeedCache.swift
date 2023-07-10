//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Sonic on 5/7/23.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
