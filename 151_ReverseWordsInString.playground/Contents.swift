// Given an input string, reverse the string word by word.

func reverseWords(_ s: String) -> String {
    return s.split(separator: " ").reversed().joined(separator: " ")
}
