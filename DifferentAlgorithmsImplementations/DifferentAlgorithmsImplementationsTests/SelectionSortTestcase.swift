//
//  SelectionSortTestcase.swift
//  DifferentAlgorithmsImplementations
//
//  Created by dev on 15/05/2017.
//  Copyright © 2017 easy. All rights reserved.
//

import XCTest
@testable import DifferentAlgorithmsImplementations

class SelectionSortTestcase: XCTestCase {
    
    let algorithm = SelectionSort()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testThatItSortsEmptyArray() {
        let array: Array = Array<Int>()
        let sortedArray: Array = self.algorithm.sort(array: array)
        XCTAssertTrue(sortedArray.elementsEqual(sortedArray))
    }
    
    func testThatItSortsOneElementArray() {
        let array: Array = Array<Int>()
        let sortedArray: Array = self.algorithm.sort(array: array)
        XCTAssertTrue(sortedArray.elementsEqual(array))
    }
    
    func testThatItSortsArray() {
        let array: Array = [23,1,3,7,11,17,1,3,7,11,13,17,23]
        let referenceSortedArray = [1,1,3,3,7,7,11,11,13,17,17,23,23]
        let sortedArray: Array = self.algorithm.sort(array: array)
        XCTAssertTrue(sortedArray.elementsEqual(referenceSortedArray))
    }
    
}
