//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Sonic on 27/6/23.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
