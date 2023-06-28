//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Sonic on 27/6/23.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "https://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}
