import Cocoa

// String is rotated
/*
 Sample input and output
 • The string “abcde” and “eabcd” should return true.
 • The string “abcde” and “cdeab” should return true.
 • The string “abcde” and “abced” should return false; this is not a string rotation.
 • The string “abc” and “a” should return false; this is not a string rotation.

 */
//Remember: input and rotated should be equal length otherwise sample input and output 4 test cass will not pass the test

func stringRotated(input: String, rotated: String) -> Bool {
    guard input.count == rotated.count else { return false }
    let combined = input + input
    return combined.contains(rotated)
}

print(stringRotated(input: "abc", rotated: "a"))
