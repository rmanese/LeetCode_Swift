 // Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).

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

func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    guard root != nil else { return [] }
    var results = [[Int]]()
    var queue: [TreeNode?] = [root]

    while !queue.isEmpty {
        var count = queue.count - 1
        var temp = [Int]()
        while count >= 0 {
            if let node = queue.removeFirst() {
                temp.append(node.val)
                count -= 1
                if let left = node.left { queue.append(left) }
                if let right = node.right { queue.append(right) }
            }
        }
        results.insert(temp, at: 0)
    }

    return results
}
