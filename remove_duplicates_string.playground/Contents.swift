import Cocoa
import Foundation
// Remove duplicates from a string

func removeDuplicates(input: String) -> String {
    var used = [Character]()
    for data in input {
        if !used.contains(data) {
            used.append(data)
        }
    }
    return String(used)
    
}

removeDuplicates(input: "kavirajjkgjnfdughbfhigjdjnbiufjgnbiukfljnbuidkljgnbudkljbnslgbjkgbkh")

// this test function is to understand not operator logic
func test(input: String) -> String {
    var temp = [Character]()
    for data in input {
        if temp.contains(data) == false {
            temp.append(data)
        }
    }
    return String(temp)
}
test(input : "kavirajjkgjnfdughbfhigjdjnbiufjgnbiukfljnbuidkljgnbudkljbnslgbjkgbkh")

// We can remove duplicacy using set but return data will be unordered but using specialized set name NSOrderedSet we can retain the order , it’s not bridged to Swift in any pleasing way, which means to use it you must add typecasting: once from Character to String before creating the set, then once from Array<Any> to Array<String>.


func challege6b(input: String) -> String {
    // first convert in array of string
    let array = input.map{(String($0))}
    let set = NSOrderedSet(array: array)
    let letters = Array(set) as! Array<String>
    // joined() method returns a new string by concatenating the elements of the sequence also can add a seprator
    print(letters.joined(separator: "|"))
    return letters.joined()
}
challege6b(input: "kavirajp")

// one more way is out there to solve this challege using filter() method of swift

func challenge6c(input: String) -> String {
    var used = [Character: Bool]()
    let result = input.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    print(used)
    return String(result)
}

challenge6c(input: "kaviraj")
