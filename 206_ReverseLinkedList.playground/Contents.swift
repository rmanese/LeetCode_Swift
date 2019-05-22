// Reverse a singly linked list.

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    var root = head
    var prev: ListNode? = nil

    while let node = root {
        let next = root?.next
        root?.next = prev
        prev = node
        root = next
    }

    return prev
}

