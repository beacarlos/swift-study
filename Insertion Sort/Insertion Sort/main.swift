//
//  main.swift
//  Insertion Sort
//
//  Created by Beatriz Carlos on 28/03/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation

func insertionSort(_ array: [Int]) -> [Int] {
    var array = array
    for x in 1 ..< array.count {
        var y = x
        while y > 0 && array[y] < array[y - 1] {
            array.swapAt(y - 1, y)
            y -= 1
        }
    }
    
    return array
}


let ordered = insertionSort([12, 1, 4, 3, 6, 2])
print(ordered)
