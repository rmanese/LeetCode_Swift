// Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.

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

func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
    guard root != nil else { return false }
    let currentSum = sum - root!.val
    if (root!.left == nil && root!.right == nil) {
        if currentSum == 0 {
            return true
        } else {
            return false
        }
    }
    return hasPathSum(root!.left, currentSum) || hasPathSum(root!.right, currentSum)
}

