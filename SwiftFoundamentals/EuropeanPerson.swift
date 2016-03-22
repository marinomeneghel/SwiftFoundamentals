//
//  EuropeanPerson.swift
//  SwiftFoundamentals
//
//  Created by Marino Meneghel on 3/22/16.
//  Copyright © 2016 Marino Meneghel. All rights reserved.
//

import Foundation
class EuropeanPerson : Person {
    
    var firstName: String
    var lastName: String
    var age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    func sayHello() {
        print("Hello \(firstName) how are u doin?");
    }
    
    func sayGoodBye() {
        print("GoodBye \(firstName) \(lastName), see u soon");
    }
    
    func getPersonOrigin() -> String {
        return "Europe"
    }
    
    
    
}