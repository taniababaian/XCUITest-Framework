//
//  UIKitCatalogUITests.swift
//  UIKitCatalogUITests
//
//  Created by Tania Babaian on 1/8/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import XCTest

final class UIKitCatalogUITests: XCTestCase {
    
    @MainActor
    func testExample() throws {
        
        print("sobaka || hello world program")
    }
    
    func testUITest() throws {
        let app = XCUIApplication() //extends XCUIElement class
        app.launch()
        
        print("app launched")
        
        app.staticTexts["Alert Views"].tap()
        app.staticTexts["Simple"].tap()
        app.buttons["OK"].tap()
        app.staticTexts["Okay / Cancel"].tap()
        app.buttons["Cancel"].tap()
        
        app.terminate()
    }
    
    func testExample2() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["Search"].tap()
        app.staticTexts["Default"].tap()
        app.searchFields.element.tap()
        app.searchFields.element.typeText("hello")
        
        app.terminate()
    }
    
    func testExample3() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        app.staticTexts["Text Fields"].tap()
        app.textFields.element(boundBy: 2).tap()
        app.textFields.element(boundBy: 2).typeText("Sobaka")
        
        app.terminate()
    }
}



