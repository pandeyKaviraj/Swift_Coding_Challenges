import Cocoa


// Count the Characters
// Write a function that accepts a string, and returns how many times specific characters appears
// Brute force approach

func countSpecificCharacters(str: String, char: Character) -> Int {
    var charCount = 0
    for letter in str {
        if char == letter {
            charCount += 1
        }
    }
    return charCount
}

print(countSpecificCharacters(str: "kavirajA", char: "a"))


// The same probleam we can solve using reduce() method in swift, let's see

func challenge5B(str: String, char: Character) -> Int {
    return str.reduce(0) {
        $1 == char ? $0 + 1 : $0
    }
}

// learn something new

let input = "Kaviraj"
// We created an array of string with above input
let array = input.map{ String($0)}
print(array)

let lowercaseInput = input.map{$0.lowercased()}
print(lowercaseInput)

// Remember: double quotes nothing written treated as empty and nil value adding will compile here because we need to unwrap it or use nil coleasing or optional chaining
let data = ["Wolf", "Lion", "kaviraj", "Paul", "", nil]
let frequency = data.map{$0?.count}
// lets print the data of optional array of int
for number in frequency {
    if let unwrap = number {
        print(unwrap)
    }
}
print("***")
print(frequency)
let emptyOrNot = data.map{$0?.isEmpty}
print(emptyOrNot)


// The third way to solve the same probleam
func challege5d(str: String, char: String) -> Int {
    //below it will give a new string
    let modified = str.replacingOccurrences(of: char, with: "")
    print(str.count)
    print("*")
    print(modified.count)
    return str.count - modified.count
}
challege5d(str: "Kaviraj", char: "a")
