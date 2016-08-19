//: Playground - noun: a place where people can play

import UIKit

//MARK: correct exercise

//Exercise 1

var string1 = "www.stacko.verflow.com"

var index1 = string1.endIndex.advancedBy(-4)

var indexDot1 = string1.rangeOfString(".")

var indexDot2 = string1.rangeOfString(".", options: NSStringCompareOptions.BackwardsSearch)

//var substringToDot = string1.substringWithRange(Range(start: string1.startIndex, end: indexDot2!.startIndex))

var substringToDot = string1.substringWithRange(string1.startIndex..<indexDot2!.startIndex)

var substringToDot1 = string1.substringToIndex(indexDot2!.startIndex)

// Exercise 2
// It's of Luong Tuan Anh
let str2 = "cho meo ga chuot vit ngan"
var n:Int = 1
var m:Int = str2.characters.count
var space:Character = " "

for var i = 0; i < m; i = i+1{
    var count:Int = 1
    
    // advance part
    for var k = 0; k < i; k = k+1{
        if( str2[str2.startIndex.advancedBy(i)] == str2[str2.startIndex.advancedBy(k)] ){
            count += 1
        }
    }
    
    if (count == 1){
        // previous part
        for var j = i + 1; j < m; j = j+1{
            if ( str2[str2.startIndex.advancedBy(i)] == str2[str2.startIndex.advancedBy(j)] ){
                count += 1
            }
        }
    }
    
    if (( count == 1) && (str2[str2.startIndex.advancedBy(i)] != space)){
        print("\(str2[str2.startIndex.advancedBy(i)])")
    }
}

// MRChung
var dic:[String:Int] = [:]

for c in str2.characters {
    if let count = dic[String(c)] {
        dic[String(c)] = count + 1
    } else {
        dic[String(c)] = 1
    }
}

for (key,val) in dic {
    if val == 1 {
        print("counter of \(key) is 1")
    }
}
