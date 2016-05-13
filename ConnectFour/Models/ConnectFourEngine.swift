//
//  ConnectFourEngine.swift
//  ConnectFour
//
//  Created by Aaron Pankratz on 5/8/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import Foundation

public class ConnectFourEngine {
    private let numOfRows = 6
    private let numOfColumns = 7
    private var computerMove = 2
    
    public func isColumnAvailable(column: Int) -> Bool {
        return true
    }
    
    public func pickColumn(column: Int) -> Int {
        
        return ((column - 1) * numOfRows) + 1
    }
    
    public func pickColumnForComputer() -> Int {
        let returnValue = computerMove
        computerMove += 1
        return returnValue
    }
}