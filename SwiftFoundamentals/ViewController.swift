//
//  ViewController.swift
//  SwiftFoundamentals
//
//  Created by Marino Meneghel on 3/22/16.
//  Copyright © 2016 Marino Meneghel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numbers: [Int] = [10, 6, 3, 2, 1, 9]
        printNumbers(numbers)
        
        let letters: [String] = ["a", "b", "c", "d"]
        printLettersWithIndexes(letters)
        
        usePersonClass()
        useClousureFunction()
        
        testCastingTypes()
    }
    
    
    func testCastingTypes() {
        // Conversion Guaranteed by the compiler
        let myDouble = 1 as Double
        
        let myFailingIntCast = "123a" as? Int
        print("Failing conditional cast result: \(myFailingIntCast)")
        
        // another type is the forced cast 'as!': if fails will crash the app (so not suggested)
    }
    
    
    func useClousureFunction() {
        // I assign the function returned by makeIncrementer to the incrementByTen constant
        // This keeps the references to runningTotal and amount variables to use them within
        // it's body
        let incrementByTen = makeIncrementer(forIncrement: 10)
        print("Increment returned \(incrementByTen())")
        print("Increment returned \(incrementByTen())")
        print("Increment returned \(incrementByTen())")
        
        print("makeIncrementer returns a function: \(makeIncrementer(forIncrement: 5))")
        print("This way shall return an int right? \(makeIncrementer(forIncrement: 5)())")
    }
    
    // Closures example (lambda)
    func makeIncrementer(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        func incrementer() -> Int {
            runningTotal += amount
            return runningTotal
        }
        return incrementer
    }
    
    
    func usePersonClass() {
        // Use Person class
        let marino = EuropeanPerson(firstName: "Marino", lastName: "Meneghel", age: 22)
        marino.sayHello()
        marino.sayGoodBye()
        
        let vale = AmericanPerson(firstName: "Seann", lastName: "Bean", age: 27)
        vale.sayHello()
        vale.firstName = "Sean"
        vale.sayGoodBye();
        AmericanPerson.printNumberOfPeople()
    }
    
    
    func printLettersWithIndexes(letters: [String]) {
        for (index, letter) in letters.enumerate() {
            print("At index \(index) there is \(letter)");
        }
    }
    

    func printNumbers(numbers: [Int]) {
        for num in numbers {
            print("Num = \(num)");
        }
    }

}

