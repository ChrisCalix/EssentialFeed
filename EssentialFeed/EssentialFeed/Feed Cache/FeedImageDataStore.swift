//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Sonic on 3/7/23.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
