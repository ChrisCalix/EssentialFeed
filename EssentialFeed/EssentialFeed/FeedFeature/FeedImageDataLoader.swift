//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Sonic on 1/7/23.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
