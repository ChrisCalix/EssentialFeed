//
//  FeedLoaderWithFallbackComposite.swift
//  EssentialApp
//
//  Created by Sonic on 5/7/23.
//

import EssentialFeed

public class FeedLoaderWithFallbackCompose: FeedLoader {
    private let primary: FeedLoader
    private let fallbak: FeedLoader
    
    public init(primary: FeedLoader, fallback: FeedLoader) {
        self.primary = primary
        self.fallbak = fallback
    }
    
    public func load(completion: @escaping (FeedLoader.Result) -> Void) {
        primary.load { [weak self] result in
            switch result {
            case .success:
                completion(result)
            case .failure:
                self?.fallbak.load(completion: completion)
            }
        }
    }
}
