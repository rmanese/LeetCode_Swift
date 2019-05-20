/*
 Given the root node of a binary search tree, return the sum of values of all nodes with value between L and R (inclusive).

 The binary search tree is guaranteed to have unique values.
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
    guard let node = root else { return 0 }
    var sum = 0
    if node.val >= L && node.val <= R {
        sum += node.val
    }
    sum += rangeSumBST(node.left, L, R)
    sum += rangeSumBST(node.right, L, R)
    return sum
}
