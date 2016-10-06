//
//  Person.swift
//  010-运行时加载属性列表
//
//  Created by Weibin LUO on 10/5/16.
//  Copyright © 2016 Weibin LUO. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String?
    var age: Int = 0
    var title: String?
    
    // [使用运行时]获取当前类所有属性的数组
    class func propertyList() -> [String] {
        
        // 1. 获取类的属性列表
        class_copyPropertyList(self, <#T##outCount: UnsafeMutablePointer<UInt32>!##UnsafeMutablePointer<UInt32>!#>)
        
        return []
    }
}
