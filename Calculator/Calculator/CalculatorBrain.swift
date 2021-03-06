//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Weibin LUO on 10/11/16.
//  Copyright © 2016 Weibin Luo. All rights reserved.
//

import Foundation


class CalculatorBrain {
    
    private var accumulator = 0.0
    
    
    func setOperand(_ operand: Double) -> () {
        
        accumulator = operand
    }
    
    private var operations: Dictionary<String, Operation> = [
        "π" : Operation.Constant(M_PI), // M_PI,
        "e" : Operation.Constant(M_E), // M_E
        "√" : Operation.UnaryOperation(sqrt),
        "cos" : Operation.UnaryOperation(cos),
        "×" : Operation.BinaryOperation({ $0 * $1 }),
        "÷" : Operation.BinaryOperation({ $0 / $1 }),
        "+" : Operation.BinaryOperation({ $0 + $1 }),
        "−" : Operation.BinaryOperation({ $0 - $1 }),
        "=" : Operation.Equals
    ]
    
    func addUnaryOperation(symbol: String, operation: @escaping (Double) -> Double) {
        operations[symbol] = Operation.UnaryOperation(operation)
    }
    
    private enum Operation {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation((Double, Double) -> Double)
        case Equals
    }
    
    func performOperation(_ symbol: String) -> () {
        
        if let operation = operations[symbol] {
            switch operation {
            case .Constant(let value):
                accumulator = value
            case .UnaryOperation(let function):
                accumulator = function(accumulator)
            case .BinaryOperation(let function):
                executePendingBinaryOperation()
                pending = PendingBinaryOperationInfo(binaryFunction: function, firstOperand: accumulator)
            case .Equals:
                executePendingBinaryOperation()
            }
        }
        
        //        if let constant = operations[symbol] {
        //            accumulator = constant
        //        }
        
        //        switch symbol {
        //        case "π":
        //            accumulator = M_PI
        //        case "√":
        //            accumulator = sqrt(accumulator)
        //        default:
        //            break
        //        }
    }
    
    private func executePendingBinaryOperation() -> () {
        if pending != nil {
            accumulator = pending!.binaryFunction(pending!.firstOperand, accumulator)
            pending = nil
        }
    }
    
    private var pending: PendingBinaryOperationInfo?
    
    private struct PendingBinaryOperationInfo {
        var binaryFunction: (Double, Double) -> Double
        var firstOperand: Double
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}
