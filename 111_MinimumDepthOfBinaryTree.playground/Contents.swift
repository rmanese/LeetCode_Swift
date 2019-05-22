/*
 Given a binary tree, find its minimum depth.

 The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
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

func minDepth(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    let right = minDepth(node.right) + 1
    let left = minDepth(node.left) + 1

    if right == 1 { return left }
    else if left == 1 { return right }

    return min(left, right)
}

