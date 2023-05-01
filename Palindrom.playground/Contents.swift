import Cocoa
import Foundation
// Check string is palindrome or not
// Remember: case senstive doesn't affect the solution so either make the input upper or lower than put your logic

func palindrome(input: String) -> Bool {
    // String make it lowercase
    let uppercase = input.uppercased()
    // String convert in an array
    let characterArray = Array(input.uppercased())
    return uppercase.reversed() == characterArray
}
palindrome(input: "tiger")
palindrome(input: "Kasak")
palindrome(input: "kasaK")
palindrome(input: "Never Odd or Even")
