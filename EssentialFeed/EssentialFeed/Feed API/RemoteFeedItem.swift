//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Sonic on 27/6/23.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
