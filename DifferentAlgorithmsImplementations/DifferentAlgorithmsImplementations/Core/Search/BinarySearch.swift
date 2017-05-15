//
//  BinarySearch.swift
//  DifferentAlgorithmsImplementations
//
//  Created by dev on 15/05/2017.
//  Copyright © 2017 easy. All rights reserved.
//

import UIKit

class BinarySearch: NSObject {

    func search(array:Array<Int>,element:Int) -> Int {
        let count = array.count
        if count == 0 {
            return NSNotFound
        }
        
        
        var lowBorderIndex = 0
        var highBorderIndex = count-1
        var findedIndex = NSNotFound
        var index = (highBorderIndex + lowBorderIndex)/2
        while (lowBorderIndex <= highBorderIndex)
        {
            
            if array[index] > element {
                highBorderIndex = index - 1
                index = (highBorderIndex + lowBorderIndex)/2
            } else if array[index] < element {
                lowBorderIndex = index + 1
                index = (highBorderIndex + lowBorderIndex)/2
            } else if array[index] == element {
                findedIndex = index
                return findedIndex
            }
            
        }
        return findedIndex
        
    }
}
