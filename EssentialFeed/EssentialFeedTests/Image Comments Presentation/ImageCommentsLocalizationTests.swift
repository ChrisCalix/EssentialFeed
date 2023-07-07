//
//  ImageCommentsLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Sonic on 7/7/23.
//

import XCTest
import EssentialFeed

class ImageCommentsLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeyAndValuesForAllSuportedLocalizations() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
