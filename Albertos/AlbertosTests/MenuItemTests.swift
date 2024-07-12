//
//  MenuItemTests.swift
//  AlbertosTests
//
//  Created by 황규상 on 7/12/24.
//

import XCTest

@testable import Albertos

final class MenuItemTests: XCTestCase {
    func testWhenDecodedFromJSONDataHasAllTheInputProperties() throws {
        // Arrange
        let json = #"{ "name": "a name", "category": "a category", "spicy": true }"#
        let jsonData = try XCTUnwrap(json.data(using: .utf8))
        
        // Act
        let item = try JSONDecoder().decode(MenuItem.self, from: jsonData)
        
        // Assert
        XCTAssertEqual(item.name, "a name")
        XCTAssertEqual(item.category, "a category")
        XCTAssertEqual(item.spicy, true)
    }
}
