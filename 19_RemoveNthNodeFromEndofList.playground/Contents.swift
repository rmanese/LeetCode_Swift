/*
 Given a linked list, remove the n-th node from the end of list and return its head.
 Given linked list: 1->2->3->4->5, and n = 2.

 After removing the second node from the end, the linked list becomes 1->2->3->5.
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    guard head?.next != nil else { return nil }

    let head = head
    var fast = head

    var counter = 0

    while fast != nil {
        counter += 1
        fast = fast?.next
    }
    fast = head

    var prev: ListNode? = nil
    counter = counter - n
    while counter > 0 {
        counter -= 1
        prev = fast
        fast = fast?.next
    }
    if prev == nil { return head?.next}
    prev?.next = fast?.next
    return head
}

