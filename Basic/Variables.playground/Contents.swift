//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str);

print("test")

let a = 1 + 2


typealias Feet = Int
var distance : Feet = 100
print(distance)


var varA = 42
//varA = "This is hello"
print(varA)

var varB = 42
print(varB)

var varC : Float
varC = 3.14159
print(varC)

var optionalInteger : Int?
//optionalInteger!

//optionalInteger = 42
//optionalInteger!

if optionalInteger != nil {
    print(optionalInteger)
} else {
    print("nil")
}


var myString : String?

myString = "Hello, Swift!"

if myString != nil {
    print(myString)
    print(myString!)
} else {
    print("nil")
}

if var yString = myString {
    print(yString)
} else {
    print("nil")
}



