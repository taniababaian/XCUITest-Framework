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
    
    
    func testExample12() throws {
        let app = XCUIApplication()
        app.launch()
        app.staticTexts["Text Fields"].tap()
        app.textFields.element(boundBy: 1).tap()
        
        app.keys["numbers"].tap()
        app.keys["1"].tap()
        app.keys["2"].tap()
        app.keys["3"].tap()
        app.keys["4"].tap()
        app.keys["5"].tap()
        
    }
    
    func testExample13() throws {    // lesson 31 32
        let app = XCUIApplication()
        app.launch()
        app.staticTexts["Text Fields"].tap()
        app.textFields.element(boundBy: 0).tap()
        app.textFields.element(boundBy: 0).typeText("Hello")
        
        _ = app.textFields.count
        for i in 0...4 {
            let data = app.textFields.element(boundBy: i).value
            if data as! String == "Hello" {
                print("content matched terminating the loop")
                break
            }
        }
    }
    
    
    func testExample14() throws {    // lesson 33
        let app = XCUIApplication()
        app.launch()
        app.staticTexts["Text Fields"].tap()
        let shot = app.screenshot()
        let attachment = XCTAttachment(screenshot: shot)
        attachment.name = "demo screenshot"
        attachment.lifetime = .keepAlways
        add(attachment)
        
        print("execution completed")
        
    }
    
    func testExample15() throws {    // lesson 34
        let app = XCUIApplication()
        app.launch()
        app.swipeUp()
        sleep(3)
        app.swipeDown()
        sleep(3)
        app.swipeLeft()
        sleep(3)
        app.swipeRight()
    }
    
    func testExample16() throws {    // lesson 35
        let app = XCUIApplication()
        app.launch()
        app.staticTexts["Page Control"].tap()
        app.pageIndicators.element(boundBy: 0).swipeRight()
        sleep(3)
        app.pageIndicators.element(boundBy: 0).swipeLeft()
        
    }
}
