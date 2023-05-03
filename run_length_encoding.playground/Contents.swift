import Cocoa

// run length encoding probleam
/* Write a function that accepts a string as input, then returns how often each letter is repeated in
 a single run, taking case into account.
 Tip: This approach is used in a simple lossless compression technique called run-length encoding.
 Sample input and output
 • The string “aabbcc” should return “a2b2c2”.
 • The strings “aaabaaabaaa” should return “a3b1a3b1a3”
 • The string “aaAAaa” should return “a2A2a2”
*/


func challenge13(input: String) -> String {
    var returnValue = ""
    var counter = 0
    var currentLetter: Character? //optional character
    
    for letter in input {
        
        if letter == currentLetter {
            counter += 1
        }
        
        else {
            if let current = currentLetter {
                returnValue.append("\(current)\(counter)")
            }
            
            currentLetter = letter
            counter = 1
        }
    }//for loop end
    // This is to return string all data store and counter
    if let current = currentLetter {
        returnValue.append("\(current)\(counter)")
    }
    return returnValue
}

print(challenge13(input: "aaabaaaA"))
