

import UIKit

class MyClass {
    
    var name: String?
}

class MyClass_1 {
    
//    private var name: String?
    private(set) var name: String?
}

MyClass.init().name = "1"
MyClass_1.init().name


public class SomePublicClass {}
internal class SomeInternalClass {}
fileprivate class SomeFilePrivateClass {}
private class SomePrivateClass {}

public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func somePrivateFunction() {}