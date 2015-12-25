//: Playground - noun: a place where people can play

import UIKit

//hello world
let strHello = "Hello "
let strSwift = "Swift!"
print(strHello+strSwift)

//CodingBat: warmup 1

//sleepIn

func sleepIn(weekday:Bool,vacation:Bool)->Bool{
    return !weekday || vacation;
}

//true
sleepIn(false, vacation: false)
//false
sleepIn(true, vacation: false)
//true
sleepIn(false, vacation: true)

