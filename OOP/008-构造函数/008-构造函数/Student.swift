//
//  Student.swift
//  008-构造函数
//
//  Created by Weibin LUO on 10/4/16.
//  Copyright © 2016 Weibin LUO. All rights reserved.
//

import UIKit

class Student: Person {

    var no: String
    
    override init() {
        print("student.init")
        
        no = "001"
        
        super.init()
    }
    
}
