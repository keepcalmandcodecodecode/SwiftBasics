//
//  BinarySearchTests.swift
//  DifferentAlgorithmsImplementations
//
//  Created by dev on 15/05/2017.
//  Copyright © 2017 easy. All rights reserved.
//

import XCTest
@testable import DifferentAlgorithmsImplementations

class BinarySearchTests: XCTestCase {
    
    let algorithm = BinarySearch()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testThatItReturnsNotFoundForEmptyArray() {
        var indexOfFindedElement = algorithm.search(array: [], element: 1)
        XCTAssertTrue(indexOfFindedElement == NSNotFound)
        
        indexOfFindedElement = algorithm.search(array: [1], element: 1)
        XCTAssertTrue(indexOfFindedElement == 0)
        
        indexOfFindedElement = algorithm.search(array: [2], element: 1)
        XCTAssertTrue(indexOfFindedElement == NSNotFound)
        
        indexOfFindedElement = algorithm.search(array: [1,2], element: 1)
        XCTAssertTrue(indexOfFindedElement == 0)
        
        indexOfFindedElement = algorithm.search(array: [1,2], element: 2)
        XCTAssertTrue(indexOfFindedElement == 1)
        
        indexOfFindedElement = algorithm.search(array: [1,2], element: 3)
        XCTAssertTrue(indexOfFindedElement == NSNotFound)
    }
    
    func testThatItReturnsNotFoundForElementNotInArray() {
        let indexOfFindedElement = algorithm.search(array: [2,3,4,5], element: 1)
        XCTAssertTrue(indexOfFindedElement == NSNotFound)
    }
    
    func testThatItReturnsIndexOfFindedElement() {
        
        var indexOfFindedElement = algorithm.search(array: [1,2,3,4,5,6,7,8,9], element: 2)
        XCTAssertTrue(indexOfFindedElement == 1)
        
        indexOfFindedElement = algorithm.search(array: [1,2,3,4,5,6,7,8,9,10,11,12,13,14], element: 11)
        XCTAssertTrue(indexOfFindedElement == 10)
        
        indexOfFindedElement = algorithm.search(array: [1,2,3,4,5,6,7,8,9,10,11,12,13], element: 7)
        XCTAssertTrue(indexOfFindedElement == 6)
        
        indexOfFindedElement = algorithm.search(array: [1,2,3,4,5,6,7,8,9,10,11,12,13], element: 13)
        XCTAssertTrue(indexOfFindedElement == 12)
    }
}
