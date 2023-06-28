//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Sonic on 26/6/23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    
    func load(completion: @escaping (LoadFeedResult) -> Void)
}

