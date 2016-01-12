//: Playground - noun: a place where people can play

import UIKit

//***hello world
let strHello = "Hello "
let strSwift = "Swift!"
print(strHello+strSwift)

let hello:String? = nil
let helloNotNil = "HELLO"
print("\(hello ?? helloNotNil) world!")

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

//notString

func notString(str:String)->String{
    let notString = "not "
    if(str.hasPrefix("not")){
        return str
    }
    else{
        return notString+str
    }
}

notString("candy")//not candy
notString("x")//not x
notString("not bad")//not bad

//missingChar

func missingChar(str:String,n:Int)->String{
    if (n>=str.characters.count){
        return str
    }
    let firstPart = (str as NSString).substringToIndex(n)
    let secondPart = (str as NSString).substringFromIndex(n+1)
    
    return firstPart+secondPart
}

missingChar("kitten", n: 1)//ktten
missingChar("kitten", n: 0)//itten
missingChar("kitten", n: 4)//kittn

//frontBack

func frontBack(str:String)->String{
    if(str.characters.count<=1){
        return str
    }
    let firstPart = (str as NSString).substringToIndex(1)
    let lastPart = (str as NSString).substringFromIndex(str.characters.count-1)
    if(str.characters.count<=2){
        return lastPart+firstPart
    }
    let mediumPart = (str as NSString).substringWithRange(NSMakeRange(1, str.characters.count-2))
    return lastPart+mediumPart+firstPart
}

frontBack("code")//eodc
frontBack("a")//a
frontBack("ab")//ba
frontBack("abc")//cba
frontBack("")//""
frontBack("Chocolate")//ehocolatC
frontBack("aavJ")//Java
frontBack("hello")//oellh

//front3

func front3(str:String)->String{
    let front:String;
    if(str.characters.count<=3){
        front = str
    }else{
        front = (str as NSString).substringToIndex(3)
    }
    return front+front+front
}

front3("Java")//JavJavJav
front3("Chocolate")//ChoChoCho
front3("abc")//abcabcabc
front3("abcXYZ")//abcabcabc
front3("ab")//ababab
front3("a")//aaa
front3("")//""

//backAround

func backAround(str:String)->String{
    let lastPart = (str as NSString).substringFromIndex(str.characters.count-1)
    return lastPart+str+lastPart
}
backAround("cat") //tcatt
backAround("Hello") //oHelloo
backAround("a") //aaa
backAround("abc") //cabcc
backAround("read") //dreadd
backAround("boo") //obooo

//or35

func or35(n:Int)->Bool{
    return n%3==0 || n%5==0
}
or35(3)//true
or35(10)//true
or35(8)//false
or35(15)//true
or35(5)//true

//front22
func front22(str:String)->String{
    let length:Int
    if str.characters.count>=2 {
        length = 2
    } else {
        length = str.characters.count
    }
    let firstTwo = (str as NSString).substringWithRange(NSMakeRange(0, length))
    return firstTwo+str+firstTwo
}
front22("kitten")//kikittenki
front22("Ha")//HaHaHa
front22("abc")//ababcab
front22("a")//aaa
front22("")//""

