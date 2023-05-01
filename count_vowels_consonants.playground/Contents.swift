import Cocoa

// Count vowels and consonants in a given string return type should be a tuple
func countVowelsConsonants(input: String) ->(vowels: Int, consonants: Int) {
    var vowelCount = 0
    var consonantCount = 0
    for letter in input.lowercased() {
        if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
            vowelCount += 1
        } else {
            consonantCount += 1
        }
    }
    return(vowelCount,consonantCount)
}

print(countVowelsConsonants(input: "mississippi"))
