//
//  LoginScreen.swift
//  FirebaseTestLabiOSDemoUITests
//
//  Created by Sahil Sharma on 2024-03-26.
//

import XCTest

struct LoginScreen {

    let app = XCUIApplication()
    
    func login() {
        app.textFields["Username"].type("jacksonbrick123")
        app.secureTextFields["Password"].type("somepassword")
        app.buttons["Login"].tap()
    }
}
