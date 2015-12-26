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

func diff21(n:Int)->Int{
    let diff = abs(21-n)
    if(n>21){
        return diff*2
    }
    return diff
}
diff21(19)//2
diff21(10)//11
diff21(21)//0

//parrotTrouble

func parrotTrouble(talking:Bool,hour:Int)->Bool{
    return (hour<7||hour>20)&&talking
}

parrotTrouble(true, hour: 6)//true
parrotTrouble(true, hour: 7)//false
parrotTrouble(false, hour: 6)//false

//makes10

func makes10(a:Int,b:Int)->Bool{
    return (a==10)||(b==10)||((a+b)==10)
}

makes10(9, b: 10)//true
makes10(9, b: 9)//false
makes10(1, b: 9)//true

//nearHundred

func nearHundred(n:Int)->Bool{
    return (abs(100-n)<=10)||(abs(200-n)<=10)
}

nearHundred(93)//true
nearHundred(90)//true
nearHundred(89)//false

//posNeg

func posNeg(a:Int,b:Int,negative:Bool)->Bool{
    return (negative && (a<0) && (b<0))||(!negative && ((a<0 && b>0)||((a>0 && b<0))))
}

posNeg(1, b: -1, negative: false)//true
posNeg(-1, b: 1, negative: false)//true
posNeg(-4, b: -5, negative: true)//true
posNeg(-4, b: -5, negative: false)//false