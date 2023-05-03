import Cocoa

// Find longest prefix
/*
 
 Write a function that accepts a string of words with a similar prefix, separated by spaces, and
 returns the longest substring that prefixes all words.
 Sample input and output
 • The string “swift switch swill swim” should return “swi”.
 • The string “flip flap flop” should return “fl”.

 */

// The approach is quite easy we split a string, get first string take two variable to store the char, and first string check with corresponding string prefix match till it match store data once it don;t match return the data.


func challenge12(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    guard let first = parts.first else { return "" }
    var currentPrefix = ""
    var bestPrefix = ""
    for letter in first {
        currentPrefix.append(letter)
        for word in parts {
            if word.hasPrefix(currentPrefix) == false {
                return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }
    return bestPrefix
}
print(challenge12(input: "swift switch swill swim"))

