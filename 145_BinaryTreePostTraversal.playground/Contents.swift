// Given a binary tree, return the postorder traversal of its nodes' values.

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

func postorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let node = root else { return [] }
    var values = [Int]()
    values += postorderTraversal(node.left)
    values += postorderTraversal(node.right)
    values.append(node.val)
    return values
}

