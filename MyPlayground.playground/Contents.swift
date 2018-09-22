//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class School
{
    let name : String
    
    init(name: String) {
        self.name = name
        
        print("\(name) is being initialized")
    }
    
    deinit {
        print("\(name) is being DEnitialized")
    }
        
}

var ref1 : School?
var ref2 : School?

ref1 = School(name: "Cal")
ref2 = School(name: "UCLA")

var ref3 : School? = ref2

ref2 = nil

print(3)
