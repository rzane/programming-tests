//
//  PersonTests.swift
//  Person
//
//  Created by Ray Zane on 8/7/15.
//  Copyright (c) 2015 Ray Zane. All rights reserved.
//

import Foundation
import XCTest
import Person

class PersonTests : XCTestCase {
    var jeff: Person = Person(name: "Jeff")
    var susy: Person = Person(name: "Susy")

    func testName() {
        XCTAssertEqual(jeff.name, "Jeff")
    }

    func testGreetHelloJeff() {
        XCTAssertEqual(jeff.greet("Hello"), "Hi, I'm Jeff")
    }

    func testGreetHelloSusy() {
        XCTAssertEqual(susy.greet("Hello"), "Hi, I'm Susy")
    }

    func testGreetGoodbye() {
        XCTAssertEqual(jeff.greet("Goodbye"), "Bye")
    }

    func testGreetOther() {
        XCTAssertEqual(jeff.greet("Yo"), "Yo")
    }
}
