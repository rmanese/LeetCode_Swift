/*
 Students are asked to stand in non-decreasing order of heights for an annual photo.

 Return the minimum number of students not standing in the right positions.  (This is the number of students that must move in order for all students to be standing in non-decreasing order of height.)

 Input: [1,1,4,2,1,3]
 Output: 3
 Explanation:
 Students with heights 4, 3 and the last 1 are not standing in the right positions.
 */

func heightChecker(_ heights: [Int]) -> Int {
    var sorted = heights.sorted()
    var misplace = 0
    for (index, _) in heights.enumerated() {
        if heights[index] != sorted[index] {
            misplace += 1
        }
    }
    return misplace
}
