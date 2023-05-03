import Cocoa
/*
 Write a function that returns a string with each of its words reversed but in the original order,
 without using a loop.
 Sample input and output
 • The string “Swift Coding Challenges” should return “tfiwS gnidoC segnellahC”.
 • The string “The quick brown fox” should return “ehT kciuq nworb xof”.
 */


func challenge15(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    let reversed = parts.map {String($0.reversed())}
    return reversed.joined(separator: " ")
}
challenge15(input: "Swift Coding Challenges")
