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

let lastname = "Smith"

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

//Optionals
//Used in situations where there may be absence of a value

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404 // serverResponseCode is an optional Int (Int?)

serverResponseCode = nil // serverResponseCode contains no value

var surveyAnswer: String? // surveyAnswer is an optional variable and is set to nil

//If statements and forced unwrapping

if convertedNumber != nil {
    print("convertedNumber contains some integer value \(convertedNumber!)") //
}

//optional binding
if let actualValue = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" contains interger value of \(actualValue)")
}else{
    print("The string \"\(possibleNumber)\" could not be converted to interger")
}

let myNumber = Int(possibleNumber)

if let myNumber = myNumber {
    print("myNUmber is \(myNumber)")
}

//more than one condition in an if statement
if let firstNumber = Int("4"), let secondNumber = Int("12"), firstNumber < secondNumber && secondNumber < 100 {
    print("All conditions are true")
}

//Implicitly unwrapped optionals
// optionals that will always have a value especially when a value is set on variable/constant declaration

let possibleString: String? = "Optional string"
let forcedString: String = possibleString! // requires ! to unwrap the optional string (forcifully unwrapping)

let assumedString: String! = "An implicitly unwrapped optional string"
let implicitString = assumedString   //no need to use !

//Error Handling

func canThrowError() throws {
    
}

//catching an error in case it's thrown

do {
    
    try canThrowError()
    
} catch {
    //error was throen
}

func makeASandwich() throws {
    
}
func eatSandwich() {}

do {
    try makeASandwich()
    
    eatSandwich()
    
} catch {
    
}

//Assertions and preconditions

//debugging with assertions


let childAge = -3
assert(childAge > 0, "A person's age cannot be 0")

if childAge > 0 {
    
}else {
    assertionFailure("A person's age cannot be zero")
}


//Enforcing Preconditions
let index = 0
precondition(index > 0, "Index must be greater than zero")


