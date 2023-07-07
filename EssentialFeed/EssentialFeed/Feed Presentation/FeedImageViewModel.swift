//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Sonic on 3/7/23.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
