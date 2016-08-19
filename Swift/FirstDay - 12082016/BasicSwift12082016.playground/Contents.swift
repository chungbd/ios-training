//: Playground - noun: a place where people can play

import UIKit

var str:String = "Hello, playground"

var numb: Int = 9

//tuple

var tupleDemo:(Int,Int,String) = (10,11,"Toan")

tupleDemo.0 = 15

numb = numb * 9
numb *= 10

numb += numb

let shiftLeft = 1<<3

let yes:Bool = true
let no:Bool = false

// boolean operators
// equality opertor
1 == 1
1 != 2

// greater than (>)  and less than (<)
1 > 2
1 < 2
// greater than or equal (>=) and less than equal (>=)

// boolean logic 
let and = true && false
// ||

let character: Character = "a"
let characterEmoji: Character = "🐶"

//let characterA: Character = "aa"

let stringDog = "Dog"

let concatencation = stringDog + stringDog

let interplation = "Hey! \(stringDog)"

"dog" == "dog"
"dog" > "cogd"

// counting
interplation.characters.count

stringDog[stringDog.startIndex]
// Use the startIndex property to access the position of the first Character of a String.

// The endIndex property is the position after the last character in a String.
//stringDog[stringDog.endIndex]

// A String.Index value can access its immediately preceding index by calling the predecessor() method

stringDog[stringDog.endIndex.predecessor()]
//its immediately succeeding index by calling the successor() method
stringDog[stringDog.startIndex.successor()]

stringDog[stringDog.startIndex.advancedBy(1)]

// indices
for index in stringDog.characters.indices {
    print("\(stringDog[index])")
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
case 1:
    description += " demo"
default:
    description += " an integer."
}
print(description)
