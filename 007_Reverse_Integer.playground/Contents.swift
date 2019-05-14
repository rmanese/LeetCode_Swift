// 7. Reverse Integer

func reverse(_ x: Int) -> Int {
    var y = x
    var revNum = 0
    while y != 0 {
        let pop = y % 10
        y /= 10
        revNum = (revNum * 10) + pop
    }
    if revNum > Int(Int32.max) || revNum < Int(Int32.min) { return 0 }
    return revNum
}

reverse(123) == 321
reverse(-123) == -321
reverse(120) == 21
reverse(1534236469) == 0
