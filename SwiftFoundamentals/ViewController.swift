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

