//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let nameOne = "anything"
let nameTwo = "Steve"
let nameThree = "Bob"
let person = nameThree

if person == nameOne{
    print("woot")
}
else if person == nameTwo{
    print("Foo")
}
else{
    print("fa")
}


switch person {
    case "anything":
    print("foo")
    
    case "Steve":
    print("egg")
    
    default:
    print("IDK")
}

var optional : Int?
optional = 7
if let a = optional{
    print("Foo")
}
else {
    print("Anit foo")
}