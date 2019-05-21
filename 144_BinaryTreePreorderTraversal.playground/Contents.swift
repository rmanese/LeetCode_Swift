// Given a binary tree, return the preorder traversal of its nodes' values.

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

func preorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let node = root else { return [] }
    var values = [Int]()
    values.append(node.val)
    values += preorderTraversal(node.left)
    values += preorderTraversal(node.right)
    return values
}

