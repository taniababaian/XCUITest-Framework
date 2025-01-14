//
//  UIKitCatalogUITestsLaunchTests.swift
//  UIKitCatalogUITests
//
//  Created by Tania Babaian on 1/8/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import XCTest

final class UIKitCatalogUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
