// 1. Two Sum

//Given an array of integers, return indices of the two numbers such that they add up to a specific target.

//You may assume that each input would have exactly one solution, and you may not use the same element twice.

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict: [Int: Int] = [:]
    for (index, num) in nums.enumerated() {
        let key = target - num
        if let pair = dict[num] {
            return [pair, index]
        } else {
            dict[key] = index
        }
    }
    return [0,0]
}

twoSum([2,7,11,15], 9) == [0,1]
twoSum([1,2,3,7,22], 5) == [1,2]
