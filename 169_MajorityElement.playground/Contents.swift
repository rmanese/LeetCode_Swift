/*
Given an array of size n, find the majority element.
 The majority element is the element that appears more than n/2 times.
You may assume that the array is non-empty and the majority element always exist in the array.
*/

func majorityElement(_ nums: [Int]) -> Int {
    var dict: [Int: Int] = [:]

    for num in nums {
        if let value = dict[num] {
            dict[num] = value + 1
        } else {
            dict[num] = 1
        }
    }

    let filteredDict = dict.filter { $0.value == dict.values.max() }
    guard let max = filteredDict.keys.first else { return 0 }

    return max
}

majorityElement([3,2,3]) == 3
majorityElement([2,2,1,1,1,2,2]) == 2

