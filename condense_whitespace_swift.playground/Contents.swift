import Cocoa

// Write a function that returns a string with any consecutive spaces replaced with a single space
//Rememver: input: "abc" returns "abc"
//input: "a    b    c" returns "a b c"
//input "space space space" returns "space a"

// This solution is not the right solution

func challenge7(input: String) -> String {
    let components = input.components(separatedBy: .whitespacesAndNewlines)
    print(components)
    return components.filter { !$0.isEmpty}.joined(separator: "")
}

print(challenge7(input: "a   b     c"))



func challenge7b(input: String) -> String {
    var seenSpace = false
    var returnValue = ""
    
    for letter in input {
        print(seenSpace)
        
        if letter == " " {
            if seenSpace {
                continue
            }
            else {
                seenSpace = true
                
            }
        }
        else {
            seenSpace = false
        }
        
        returnValue.append(letter)
    }
    return returnValue
}


print(challenge7b(input: " abc"))
 
 
 
var data = [Int]()
for i in 1...10 {
    if (i == 4 || i == 7) {
        continue
    }
    data.append(i)
}
for x in data {
    print(x)
}

// Same probleam can be solved by using regular expression

func challenge6c(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil )
}
