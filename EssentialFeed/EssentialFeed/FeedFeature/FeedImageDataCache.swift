//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Sonic on 5/7/23.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
