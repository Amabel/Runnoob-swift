//: Playground - noun: a place where people can play

import UIKit

var simpleSum = 1 + 3

var sumWithMultiplication = 1 + 3 - 3 * 2

var sumArray = [1, 2] + [1, 2]

func add(left: [Int], right: [Int]) -> [Int] {
    var sum = [Int]()
    assert(left.count == right.count, "vector of same length only")
    for (key, _) in left.enumerated() {
        sum.append(left[key] + right[key])
    }
    return sum
}

var arr1 = [1, 1]
var arr2 = [2, 2]
var arr3 = add(left: arr1, right: arr2)

func +(left: [Int], right: [Int]) -> [Int] {
    var sum = [Int]()
    assert(left.count == right.count, "vector of same length only")
    for (key, _) in left.enumerated() {
        sum.append(left[key] + right[key])
    }
    return sum
}

var arr4 = [1, 1]
var arr5 = [2, 2]
var arr6 = arr4 + arr5

infix operator ⊕ { associativity left precedence 140 }
func ⊕(left: [Int], right: [Int]) -> [Int] {
    var sum = [Int]()
    assert(left.count == right.count, "vector of same length only")
    for (key, _) in left.enumerated() {
        sum.append(left[key] + right[key])
    }
    return sum
}