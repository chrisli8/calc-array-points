//
//  main.swift
//  CalcArrayPoints
//
//  Created by Chris Li on 4/6/17.
//  Copyright © 2017 Chris Li. All rights reserved.
//

import Foundation

//
//  CalcArrayPoints.swift
//
//
//  Created by Chris Li on 4/6/17.
//
//

import Foundation

// MARK: Calculator Part

// Takes two Ints and returns addition mod result
func add(left: Int, right: Int) -> Int {
    return left + right
}

// Takes two Ints and returns the subtraction result
func subtract(left: Int, right: Int) -> Int {
    return left - right
}

// Takes two Ints and returns the multiplication result
func multiply(left: Int, right: Int) -> Int {
    return left * right
}

// Takes two Ints and returns the division result
func divide(left: Int, right: Int) -> Int {
    return left / right
}

// Takes two Ints and returns the mod result
func mod(left: Int, right: Int) -> Int {
    return left % right
}

// Takes in two Ints and a fuction for how they should be combined
// combined the two number based on the passed in fuction
func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

// MARK: Array Fun part

// Takes in array of Ints and returns the result
// of adding them all
func add(array: [Int]) -> Int {
    var total = array[0]
    for index in 1...(array.count - 1) {
        total += array[index]
    }
    return total
}

// Takes in array of Ints and returns the result
// of multiplying them all
func multiply(array: [Int]) -> Int {
    var total = array[0]
    for index in 1...(array.count - 1) {
        total *= array[index]
    }
    return total
}

func count(array: [Int]) -> Int {
    return array.count
}

func average(array: [Int]) -> Int {
    return add(array: array) / count(array: array)
}

// Generic array operation method that takes in
// an array of Ints and return the result of the
// passed in array operation method
func reduce(array: [Int], operation : ([Int]) -> Int) -> Int {
    return operation(array)
}

// MARK: Points part

// Takes in two points (represented as dictionaries) and
// returns a point that represents adding the points
func add(p1: (Int, Int), p2: (Int, Int)) -> (Int,Int) {
    return (p1.0 + p2.0 , p1.1 + p2.1)
}

// Takes in two points (represented as dictionaries) and
// returns a point that represents subtracting the points
func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int,Int)  {
    return (p1.0 - p2.0 , p1.1 - p2.1)
}

//// Takes in two points (represented as dictionaries) and
//// returns a point that represents adding the points
//func add(p1: [Int : Int], p2: [Int : Int]) -> [Int : Int]  {
//    return p1
//}
//
//// Takes in two points (represented as dictionaries) and
//// returns a point that represents subtracting the points
//func subtract(p1: [Int : Int], p2: [Int : Int]) -> [Int : Int] {
//    return p1
//}

// Takes in two points (represented as dictionaries) and
// returns a point that represents adding the points
func add(p1: [String : Int]?, p2: [String : Int]?) -> [String : Int]? {
    var result = [String : Int]()
    if (p1?["x"] != nil && p1?["y"] != nil && p2?["x"] != nil && p2?["y"] != nil) {
        result["x"] = p1!["x"]! + p2!["x"]!
        result["y"] = p1!["y"]! + p2!["y"]!
    }
    return result
}

// Takes in two points (represented as dictionaries) and
// returns a point that represents subtracting the points
func subtract(p1: [String : Int]?, p2: [String : Int]?) -> [String : Int]? {
    var result = [String : Int]()
    if (p1?["x"] != nil && p1?["y"] != nil && p2?["x"] != nil && p2?["y"] != nil) {
        result["x"] = p1!["x"]! - p2!["x"]!
        result["y"] = p1!["y"]! - p2!["y"]!
    }
    return result
}

// Takes in two points (represented as dictionaries) and
// returns a point that represents adding the points
func add(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    var result = [String : Double]()
    if (p1?["x"] != nil && p1?["y"] != nil && p2?["x"] != nil && p2?["y"] != nil) {
        result["x"] = p1!["x"]! + (p2!["x"]!)
        result["y"] = p1!["y"]! + (p2!["y"]!)
    }
    return result
}

// Takes in two points (represented as dictionaries) and
// returns a point that represents subtracting the points
func subtract(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    var result = [String : Double]()
    if (p1?["x"] != nil && p1?["y"] != nil && p2?["x"] != nil && p2?["y"] != nil) {
        result["x"] = p1!["x"]! - p2!["x"]!
        result["y"] = p1!["y"]! - p2!["y"]!
    }
    return result
}









