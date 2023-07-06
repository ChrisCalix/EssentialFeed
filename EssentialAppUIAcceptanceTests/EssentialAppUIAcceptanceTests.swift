//
//  EssentialAppUIAcceptanceTests.swift
//  EssentialAppUIAcceptanceTests
//
//  Created by Sonic on 5/7/23.
//

import XCTest

final class EssentialAppUIAcceptanceTests: XCTestCase {

    func test_onlaunch_displayRemoteFeedWhenCustomerHasConnectivity() {
        let app = XCUIApplication()
        
        app.launch()
        
        XCTAssertEqual(app.cells.count, 22)
    }
}
