//
//  SelectionSort.swift
//  DifferentAlgorithmsImplementations
//
//  Created by dev on 15/05/2017.
//  Copyright © 2017 easy. All rights reserved.
//

import UIKit

class SelectionSort: NSObject {
    
    func sort(array:Array<Int>) -> Array<Int> {
        var mutableArray: Array = Array(array)
        
        if mutableArray.count > 0 {
            
            var minimalElement = mutableArray[0]
            var minimalIndex = 0
            for (index,element) in mutableArray.enumerated() {
                if element < minimalElement {
                    minimalElement = element
                    minimalIndex = index
                }
            }
            
            let firstElement = mutableArray[0]
            mutableArray[0] = mutableArray[minimalIndex]
            mutableArray[minimalIndex] = firstElement
            
            let unsortedTail = Array(mutableArray[1..<mutableArray.count])
            let sortedTail = sort(array: unsortedTail)
            mutableArray.replaceSubrange(Range(1..<mutableArray.count), with: sortedTail)
        }
        
        
        return mutableArray
    }

}
