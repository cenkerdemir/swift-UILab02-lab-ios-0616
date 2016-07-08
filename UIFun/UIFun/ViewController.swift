//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets

    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var firstColor: UISegmentedControl!
    @IBOutlet weak var secondColor: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        paintBucket.backgroundColor = UIColor.redColor()
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        
        switch (first.lowercaseString, second.lowercaseString) {
        case ("red", "yellow"), ("yellow", "red"):
            return "orange"
        case ("red", "blue"), ("blue", "red"):
            return "purple"
        case ("yellow", "blue"), ("blue", "yellow"):
            return "green"
        case ("yellow", "yellow"):
            return "yellow"
        case ("blue", "blue"):
            return "blue"
        default:
            return "red"
        }
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        var firstColorName = firstColor.color.name
        var secondColorName = secondColor.color.name
        if sender == firstColor {
            firstColorName = sender.color.name
        }
        else {
            secondColorName = sender.color.name
        }
       paintBucket.paintColorName = mixColors(withFirst: firstColorName, second: secondColorName)
    }
}
