import Cocoa


// Write your own version of the contains method on string that ignores the letter case and don't use swift contains method

/*
 input and output:
 
 "Hello World".contains("hello") return true
 "Hello world".contains("WORLD") return true
 "Hello world".contains("good") return true
 
 */

// The range(of:) method returns the position of one string inside other, also possible it doesn't exist there and return value is optional. this is perfect for us because if return value is nil, it doesn't exist there


extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}

let str = "Hello World"
str.fuzzyContains("goodbye")
