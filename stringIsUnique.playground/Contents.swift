import Cocoa
import Foundation


// Strings : Are the letter unique

// a-z true
//aAbBzZ true
//hello false

//Remember: Swift programming is case senstive so K & k are not same this solution will work but the probleam is for long string complexity is O(n) which is not ideal

// This solution is brute forch approach

func challegeX(input: String) -> Bool {
    var checkdAlphabets = [Character]()
    for letter in input {
        if checkdAlphabets.contains(letter) {
            return false
        }
        checkdAlphabets.append(letter)
    }
    return true
}

challegeX(input: "Kkaviraj")

// The another solution we can give using Set. we know set in unordered and does not contains duplicates so using count property we can compar and give result


func challegeXOpti(input: String) -> Bool {
    return Set(input).count == input.count
}
challegeXOpti(input: "kKaviraj")
