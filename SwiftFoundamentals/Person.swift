//
//  Person.swift
//  SwiftFoundamentals
//
//  Created by Marino Meneghel on 3/22/16.
//  Copyright © 2016 Marino Meneghel. All rights reserved.
//

import Foundation

class Person {
    
    var firstName: String;
    var lastName: String;
    var age: Int;
    static var numberOfPeople: Int = 0;
    
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
    }
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.age = age;
        
        Person.numberOfPeople++
    }
    
    
    func greet() {
        print("Hello \(self.fullName)");
    }
    
    
    class func printNumberOfPeople() {
        print("There are \(Person.numberOfPeople) persons here!");
    }
    
    
    
    
    
}




