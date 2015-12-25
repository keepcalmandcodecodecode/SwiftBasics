//: Playground - noun: a place where people can play

import UIKit

//***hello world
let strHello = "Hello "
let strSwift = "Swift!"
print(strHello+strSwift)

//***CodingBat: warmup 1

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

//monkeyTrouble

func monkeyTrouble(aSmile:Bool,bSmile:Bool)->Bool{
    return (aSmile && bSmile)||(!aSmile && !bSmile)
}
//true
monkeyTrouble(true, bSmile: true)
//true
monkeyTrouble(false, bSmile: false)
//false
monkeyTrouble(true, bSmile: false)

//sumDouble

func sumDouble(a:Int,b:Int)->Int{
    let sum = a+b
    if(a == b){
        return sum*2
    } else {
        return sum
    }
    
}
sumDouble(1, b: 2)//3
sumDouble(3, b: 2)//5
sumDouble(2, b: 2)//8