// Remove all elements from a linked list of integers that have value val

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    var root = head
    var cpy = ListNode(0)
    let ret = cpy

    while let node = root {
        if node.val == val {
            root = root?.next
        } else {
            cpy.next = ListNode(node.val)
            cpy = cpy.next!
            root = root?.next
        }
    }
    return ret.next
}

