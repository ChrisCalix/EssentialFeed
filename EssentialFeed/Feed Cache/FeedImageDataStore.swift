//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Sonic on 3/7/23.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
