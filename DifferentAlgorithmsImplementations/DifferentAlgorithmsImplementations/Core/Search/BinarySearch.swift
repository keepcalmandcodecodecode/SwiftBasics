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
        } else if count == 1 {
            if element == array[0] {
                return 0
            } else {
                return NSNotFound    
            }
        }
        
        var index = count / 2
        var lowBorder = 0
        var highBorder = count
        var findedIndex = NSNotFound
        
        while (lowBorder != highBorder)
        {
            if array[index] > element {
                highBorder = index
                index = lowBorder + (highBorder - lowBorder)/2
            } else if array[index] < element {
                lowBorder = index
                index = lowBorder + (count - lowBorder)/2
            } else if array[index] == element {
                findedIndex = index
                return findedIndex
            }
            
        }
        return findedIndex
        
    }
}
