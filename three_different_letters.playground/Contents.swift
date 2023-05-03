import Cocoa
import Foundation
// Three different letters
// Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.
/*
 Sample input and output:
 
 • The strings “Clamp” and “Cramp” would return true, because there is one letter difference.
 • The strings “Clamp” and “Crams” would return true, because there are two letter differences.
 • The strings “Clamp” and “Grams” would return true, because there are three letter differences.
 • The strings “Clamp” and “Grans” would return false, because there are four letter differences.
 • The strings “Clamp” and “Clam” would return false, because they are different lengths.
 • The strings “clamp” and “maple” should return false. Although they differ by only one
 letter, the letters that match are in different positions.
 
 */

func threeLettersDifferent(input1: String, input2: String) -> Bool {
    guard input1.count == input2.count else { return false }
    let array1 = Array(input1)
    let array2 = Array(input2)
    var difference = 0
    // enumerated() is a method in swift which gives current index as well as each character
    for (index, letter) in array1.enumerated() {
        if array2[index] != letter {
            difference += 1
            
            if difference == 4 {
                return false
            }
        }
    }
    return true
}

// Bonus: Learning about enumerated

let str = "Kaviraj"
// i is index and n is data
for(i,n) in str.enumerated() {
    print("Index \(i) is letter \(n)")
}
