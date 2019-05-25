/*
 Given a non-empty, singly linked list with head node head, return a middle node of linked list.

 If there are two middle nodes, return the second middle node.

*/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func middleNode(_ head: ListNode?) -> ListNode? {
    var head = head
    var mid = head

    while head?.next != nil {
        head = head!.next?.next
        mid = mid?.next
    }
    return mid
}

