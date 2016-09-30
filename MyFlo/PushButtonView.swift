//
//  PushButtonView.swift
//  MyFlo
//
//  Created by James S Witte on 9/28/16.
//  Copyright © 2016 James S Witte. All rights reserved.
//

import UIKit

@IBDesignable
class PushButtonView: UIButton {

	@IBInspectable var fillColor: UIColor = UIColor.green
	@IBInspectable var isAddButton: Bool = true
	
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
		fillColor.setFill()
		path.fill()
		
		// "height" is thickness of the stroke
		let plusHeight:CGFloat = 10.0
		let plusWidth:CGFloat = min(bounds.width, bounds.height) * 0.6
		
		let plusPath = UIBezierPath()
		plusPath.lineWidth = plusHeight
		
		// horizontal bar
		plusPath.move(
			to: CGPoint(
				x:bounds.width/2 -  plusWidth/2 + 0.5,
				y:bounds.height/2 + 0.5))
		plusPath.addLine(
			to: CGPoint(
				x: bounds.width/2 +  plusWidth/2 + 0.5,
				y: bounds.height/2 + 0.5)
		)
		
		if isAddButton {
			// add a vertical bar - same path, so the whole thing is whites
			plusPath.move(
				to: CGPoint(
					x: bounds.width/2 + 0.5,
					y: bounds.height/2 - plusWidth/2 + 0.5))
			plusPath.addLine(
				to: CGPoint(
					x: bounds.width/2 + 0.5,
					y: bounds.height/2 + plusWidth/2 + 0.5)
			)
		}
		UIColor.purple.setStroke()
		plusPath.stroke()
    }
	// func draw
	
}
