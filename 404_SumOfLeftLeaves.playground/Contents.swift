// Find the sum of all left leaves in a given binary tree.

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

func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    return helper(root)
}

func helper(_ root: TreeNode) -> Int {
    var sum = 0
    if let left = root.left {
        if isLeaf(left) {
            sum += left.val
        } else {
            sum += helper(left)
        }
    }
    if let right = root.right {
        sum += helper(right)
    }
    return sum
}

func isLeaf(_ root: TreeNode) -> Bool {
    return root.left == nil && root.right == nil
}
