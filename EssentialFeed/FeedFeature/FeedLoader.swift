//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Sonic on 26/6/23.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}

