// 58. Length of Last Word

// Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.
// If the last word does not exist, return 0.

func lengthOfLastWord(_ s: String) -> Int {
    guard let lastWord = s.split(separator: " ").last?.count else { return 0 }
    return lastWord
}

lengthOfLastWord("A") == 1
lengthOfLastWord("Aa Bb Cc") == 2
lengthOfLastWord("Swift") == 5
lengthOfLastWord("Hello World") == 5
