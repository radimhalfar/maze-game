//
//  Grid.swift
//  MazeGenerator
//
//  Created by Radim Halfar on 27.10.16.
//  Copyright © 2016 Inloop, s.r.o. All rights reserved.
//

import Foundation

// Class representing a grid, where elements can be accessed using [x,y] subscript syntax
class Grid<T> {
    
    var matrix:[T]
    var rows:Int
    var columns:Int
    
    init(rows:Int, columns:Int, defaultValue:T) {
        self.rows = rows
        self.columns = columns
        matrix = Array(repeating:defaultValue, count:(rows*columns))
    }
    
    func indexIsValidFor(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(col:Int, row:Int) -> T {
        get {
            assert(indexIsValidFor(row: row, column: col), "Index out of range")
            return matrix[Int(columns * row + col)]
        }
        set {
            assert(indexIsValidFor(row: row, column: col), "Index out of range")
            matrix[(columns * row) + col] = newValue
        }
    }
}
