//: [Previous](@previous)

import UIKit

var str = "Hello, playground"

let cft: CGRect

let labelRect = CGRect(x: 20, y: 20, width: 100, height: 50)

let label = UILabel(frame: labelRect)

label.text = "Hello"

let path = UIBezierPath()
path.move(to: CGPoint(x: 80, y: 50))
path.addLine(to: CGPoint(x: 140, y: 150))


