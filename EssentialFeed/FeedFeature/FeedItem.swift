//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Sonic on 26/6/23.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
