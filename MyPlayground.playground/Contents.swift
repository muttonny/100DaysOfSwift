import UIKit
/**
 1. Variables and Constatnts
 2. using "var" and "let" keywords to declare variables and constants
 3. using equal sign to assign data to varaibles or constants
 4. camelCase best practice for varaible naming
 5. constants are like variables but you cannot reassign data to them after initail assignment
 **/

var greeting = "Hello, playground"

//Variables
var firstname = "Andrew"

print(firstname)

var stockPrice = 100
print(stockPrice)

stockPrice = 50
print(stockPrice)

stockPrice = 43

//conatcnts

let  lastname = "Smith"

//Challenge 1
var firstName: String = "Joseph"
var lastName: String = "Smith"
let gender: String = "Male"
var age:Int = 18
var cashOnHand: Double = 100.0

let pi = 3.14

print(firstName)
print(lastName)
print(gender)
print(age)
print(cashOnHand)

/**
 Data type
 Int, String, Float, Double, Bool
 And type annotation
 */

var myAge: Int = 18
var myHeight: Float = 170.5
var bankBalance: Double = 100000.4
var isMarried: Bool = false
var hasChildren = false

//Challenge 2, Add respective data types to variables and constants in Challenge 1

var a = 2
var b = 3
var c = 4
var d = 4.5

print(a + b)
print(a * b * c)
print(c / a)

print(pow(2, 3))
print(sqrt(8))
print(ceil(d))
print(floor(d))
a+=1

a = 15

//If statement
if a <= 10 && b > 3 {
    print("branch one")
} else if a >= 15 || b == 3{
    print("branch two")
} else if a > 30 {
    print("branch four")
}else {
    print("branch five")
}


//Challenge 3
if hasChildren {
    print("Being a parent is hard, my money goes to my children instead of games!")
} else if myAge > 18 {
    print("Adulting is hard I can't buy the game because I need to pay bills")
}else{
    print("I'm young and I can do what I want so gimme that game!")
}

firstName = "John"

//sstring interpolation
print("My name is \(firstName) \(lastName)")

//integers whole numbers with no fraction componebt

let minValue = UInt8.min
let maxValue = UInt8.max

let minValueInt = Int.min
let maxValueInt = Int.max

//float point numbers, numbers with a fraction component
//Doubles, representing 64 bit float point number
//Float, representing 32 bit float point number

//Type safety and type inference
/*
 Type safety - you cannot assign another type to a variable
 Type inference - compiler determines the type of a variable/constant from the data assigned to it at the point of declaration
 */

let monthsInYear = 12  // months is inferred to be of tyoe Int
let pii = 3.14 // pii is inferred to be of type Double

//Tuples - group of multiple values into a single compound value
let http404Error = (404, "Not found")
http404Error.0
http404Error.1

let (statusCode, statusDesc) = http404Error

print("StatusCode: \(statusCode)")
print("StatusDesc: \(statusDesc)")

let (juststatusCode, _) = http404Error

print("justStatusCode: \(juststatusCode)")

let http200Status = (statusCode: 200, statusDesc: "OK")
http200Status.statusCode
http200Status.statusDesc




