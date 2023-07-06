//
//  EssentialAppUIAcceptanceTests.swift
//  EssentialAppUIAcceptanceTests
//
//  Created by Sonic on 5/7/23.
//

import XCTest

final class EssentialAppUIAcceptanceTests: XCTestCase {

    func test_onlaunch_displayRemoteFeedWhenCustomerHasConnectivity() {
        let app = XCUIApplication(bundleIdentifier: "com.dukena.EssentialApp")
        
        app.launch()
        
        XCTAssertEqual(app.cells.count, 22)
    }
    
    func test_inLaunch_displaysCachedRemoteFeedWhenCustomerHasNoConnectivity() {
        let onlineApp = XCUIApplication()
        onlineApp.launch()
        
        let offlineApp = XCUIApplication()
        offlineApp.launchArguments = ["-connectivity", "offline"]
        offlineApp.launch()
        
        let cachedFeedCells = offlineApp.cells
        XCTAssertEqual(cachedFeedCells.count, 22)
        
        let firstCachedImage = offlineApp.images.firstMatch
        
        XCTAssertTrue(firstCachedImage.exists)
    }
    
    func test_onLaunch_displayEmptyFeedWhenCustomerHasNoConnectivityAndNoCache() {
        let app = XCUIApplication()
        app.launchArguments = ["-reset", "-connectivity", "offline"]
        app.launch()
        
        XCTAssertEqual(app.cells.count, 0)
    }
}
