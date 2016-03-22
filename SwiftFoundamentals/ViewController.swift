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
        let marino = Person(firstName: "Marino", lastName: "Meneghel", age: 22)
        marino.greet()
        Person.printNumberOfPeople()
        
        let vale = Person(firstName: "Vale", lastName: "Rossi", age: 26)
        vale.greet()
        vale.firstName = "Valentino"
        vale.greet()

        Person.printNumberOfPeople()
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

