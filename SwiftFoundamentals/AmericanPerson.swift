//
//  Person.swift
//  SwiftFoundamentals
//
//  Created by Marino Meneghel on 3/22/16.
//  Copyright © 2016 Marino Meneghel. All rights reserved.
//

import Foundation

class AmericanPerson : Person {
    
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
        
        AmericanPerson.numberOfPeople++
    }
    
    
    func sayHello() {
        print("Hello \(self.fullName)")
    }
    
    func sayGoodBye() {
        print("GoodBye \(self.firstName)")
    }
    
    func getPersonOrigin() -> String {
        return "Amedrica";
    }
    
    
    class func printNumberOfPeople() {
        print("There are \(AmericanPerson.numberOfPeople) persons here!");
    }
    
    
    
    
    
}




