//
//  CounterView.swift
//  MyFlo
//
//  Created by James S Witte on 9/30/16.
//  Copyright © 2016 James S Witte. All rights reserved.
//

import UIKit

//let NumberGlasses = 8
//let π:CGFloat = CGFloat(M_PI)

@IBDesignable
class CounterView: UIView {
	
	@IBInspectable var counterFillColor: UIColor = UIColor.green
	@IBInspectable var isAddButton: Bool = true
	@IBInspectable var counter: Int = 5
	
    override func draw(_ rect: CGRect) {
		counterFillColor.setFill()
		UIRectFill(rect)
	}
	// func draw
	
}
