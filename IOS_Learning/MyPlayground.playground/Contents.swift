//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var m1 = "Hey how's it going"
var m2 = "pretty good actually"

m1.uppercaseString
m2.localizedCapitalizedString

m1.lowercaseString + " just a little bit added"

if (m1 == m2){
    print("Same message")
}else{
    print("Different message")
}

let messageLabel = UILabel(frame: CGRectMake(0,0,300,50))
messageLabel.text = m1
messageLabel.backgroundColor = UIColor.orangeColor()
messageLabel.textAlignment = NSTextAlignment.Center
messageLabel.layer.cornerRadius = 15.0
messageLabel.clipsToBounds = true
messageLabel



