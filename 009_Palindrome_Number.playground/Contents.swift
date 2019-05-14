//Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

func isNumberPalindrome(_ x: Int) -> Bool {
    guard x >= 0 else { return false }
    return x == reverseNumber(x)
}

func reverseNumber(_ x: Int) -> Int {
    var y = x
    var revNum = 0
    while y != 0 {
        let pop = y % 10
        y /= 10
        revNum = (revNum * 10) + pop
    }
    return revNum
}

isNumberPalindrome(121) == true
isNumberPalindrome(-121) == false
isNumberPalindrome(10) == false
