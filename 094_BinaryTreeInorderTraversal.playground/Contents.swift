//Given a binary tree, return the inorder traversal of its nodes' values.

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


func inorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let node = root else { return [] }
    var values = [Int]()
    values += inorderTraversal(node.left)
    values.append(node.val)
    values += inorderTraversal(node.right)
    return values
}

