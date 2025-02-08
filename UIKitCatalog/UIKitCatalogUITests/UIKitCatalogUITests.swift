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
    
    func testExample4() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["Search"].tap()
        app.staticTexts["Default"].tap()
        sleep(5)
        
        app.searchFields.element.tap()
        app.searchFields.element.typeText("Sobaka")
        
        app.terminate()
    }
    
    
    func testExample5() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["Text Fields"].tap()
        app.textFields.element(boundBy: 1).tap()
        app.textFields.element(boundBy: 1).typeText("Hello")
        
        
    }
    
    
    func testExample6() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["Date Picker"].tap()
        app.buttons["Date and Time Picker"].tap()
        app.buttons["Thursday, February 6"].tap()
        app.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.1)).tap()
        app.buttons.allElementsBoundByIndex.last?.tap()
        app.pickerWheels["PM"].adjust(toPickerWheelValue: "AM")
    }
    
    
    func testExample7() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["Picker View"].tap()
        app.pickerWheels["Red color component value"].adjust(toPickerWheelValue: "120")
        app.pickerWheels["Green color component value"].adjust(toPickerWheelValue: "255")
        app.pickerWheels["Blue color component value"].adjust(toPickerWheelValue: "120")
        
    }
    
    
    func testExample8() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["Sliders"].tap()
        app.sliders.element(boundBy: 1).adjust(toNormalizedSliderPosition: 0.9)
        
    }
    
    func testExample9() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["Switches"].tap()
        app.switches["1"].firstMatch.tap()
        
        
    }
    
    func testSwitchStatus() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["Switches"].tap()
        
        let switchValue = app.switches["1"].firstMatch.value
        let intSwitchValue = (switchValue as! NSString).integerValue
        print(intSwitchValue)
        
        if(intSwitchValue == 1){
            print("already selected")
        }else{
            app.switches["1"].firstMatch.tap()
            app.switches.element(boundBy: 1).tap()
            print("sucessfully selected")
        }
    }
    
    func testExample10() throws {
        let app = XCUIApplication()
        app.launch()
        app.staticTexts["Text Fields"].tap()
        app.textFields.element(boundBy: 1).tap()
        app.textFields.element(boundBy: 1).typeText("demo user")
        
        
        app.textFields.element(boundBy: 1).press(forDuration: 1.2)
        app.menuItems["Select All"].tap()
        app.keys["delete"].press(forDuration: 2)
        
    }
    
    func testExample11() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["Text Fields"].tap()
        app.textFields.element(boundBy: 1).tap()
        app.textFields.element(boundBy: 1).typeText("demo user")
        app.textFields.element(boundBy: 1).press(forDuration: 1.2)
        app.menuItems["Select All"].tap()
        app.keys["delete"].tap()
    }
}
