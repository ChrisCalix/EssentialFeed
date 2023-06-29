//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Sonic on 26/6/23.
//

import Foundation


public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}

