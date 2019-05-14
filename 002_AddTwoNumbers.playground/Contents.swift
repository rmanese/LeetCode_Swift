//You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
//You may assume the two numbers do not contain any leading zero, except the number 0 itself.

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func addTwoNumbers(_ li: ListNode?, _ li2: ListNode?) -> ListNode? {
    var node1 = li
    var node2 = li2
    var prev = ListNode(0)
    let head = prev
    var carry = 0

    while node1 != nil || node2 != nil {
        var sum = (node1?.val ?? 0) + (node2?.val ?? 0)
        if carry > 0 {
            sum += carry
            carry = 0
        }
        if sum >= 10 {
            carry = sum / 10
            sum = sum % 10
        }
        let new = ListNode(sum)
        node1 = node1?.next
        node2 = node2?.next
        prev.next = new
        prev = prev.next!
    }
    if carry > 0 {
        prev.next = ListNode(0)
    }

    return head.next
}
