/*
 Given an array nums and a value val, remove all instances of that value in-place and return the new length.

 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
*/

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    for (index,x) in nums.enumerated().reversed() {
        if x == val {
            nums.remove(at: index)
        }
    }
    return nums.count
}
