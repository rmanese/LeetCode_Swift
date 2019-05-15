//Given a string, find the length of the longest substring without repeating characters.
//
//func lengthOfLongestSubstring(_ s: String) -> Int {
//    var charSet: Set<Character> = []
//    var counter = 0
//    var max = 0
//
//    for char in s {
//        if !charSet.contains(char) {
//            charSet.insert(char)
//            counter += 1
//            max = counter > max ? counter : max
//        } else {
//            charSet = [char]
//            max = counter > max ? counter : max
//            counter = 1
//        }
//    }
//    return max
//}


func lengthOfLongestSubstring(_ s: String) -> Int {
    if s.count == 0 {
        return 0
    }

    var left = s.startIndex
    var right = s.startIndex
    var i = s.startIndex

    var result = 0

    while right < s.endIndex{
        i = left
        while i < right {
            if s[i] == s[right]{
                left = s.index(after: i)
                break
            }
            i = s.index(after: i)
        }
        result = max(result, right.utf16Offset(in: s) - left.utf16Offset(in: s) + 1)
        right = s.index(after: right)
    }
    return result
}


lengthOfLongestSubstring("abcda") == 4
lengthOfLongestSubstring("abcabcbb") == 3
lengthOfLongestSubstring("bbbbb") == 1
lengthOfLongestSubstring("pwwkew") == 3


