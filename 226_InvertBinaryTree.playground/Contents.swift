// Invert a Binary Tree

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

func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let parent = root else { return nil }
    invertChildNodes(parent)
    return root
}

func invertChildNodes(_ root: TreeNode?) {
    guard let root = root else { return }
    guard (root.right != nil || root.left != nil) else { return }
    var parent = root
    var left: TreeNode? = parent.left
    var right: TreeNode? = parent.right
    parent.left = right
    parent.right = left
    invertChildNodes(root.left)
    invertChildNodes(root.right)
}

