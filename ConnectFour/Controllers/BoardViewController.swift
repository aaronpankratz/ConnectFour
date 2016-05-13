//
//  ViewController.swift
//  ConnectFour
//
//  Created by Aaron Pankratz on 5/8/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import UIKit

class BoardViewController: UIViewController {
    
    private let gameEngine = ConnectFourEngine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapColumn(sender: AnyObject) {
        let columnNumber = sender.valueForKey("column")! as! Int
        if gameEngine.isColumnAvailable(columnNumber) {
            var viewTag = gameEngine.pickColumn(columnNumber)
            var view = self.view.viewWithTag(viewTag)!
            view.backgroundColor = UIColor.blueColor()
            
            viewTag = gameEngine.pickColumnForComputer()
            view = self.view.viewWithTag(viewTag)!
            view.backgroundColor = UIColor.redColor()
        }
    }
}

