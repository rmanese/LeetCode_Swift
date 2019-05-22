/*
 Given a binary tree, find its maximum depth.

 The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
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

func maxDepth(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    var left = 0
    var right = 0
    left += maxDepth(node.left)
    right += maxDepth(node.right)
    return max(left, right) + 1
}

