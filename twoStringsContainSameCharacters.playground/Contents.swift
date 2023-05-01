import Cocoa
import Foundation




func hello(input: String) {
    for letter in input {
        print(letter)
    }
}
hello(input: "abcs")


func challenge3a(string1: String, string2: String) -> Bool {
   var checkString = string2
   for letter in string1 {
       if let index = checkString.firstIndex(of: letter) {
         checkString.remove(at: index)
      } else {
         return false
      }
}
   return checkString.count == 0
}

challenge3a(string1: "abcd", string2: "cbaa")



// optimized solution

func challegeX(input1: String, input2: String) -> Bool {
    // Create array of both the inputs
    let array1 = Array(input1)
    let array2 = Array(input2)
    
    // The first thing we need to check number of characters are equal or not
    if array1.count == array2.count {
        return array1.sorted() == array2.sorted()
    }
    return false
}
