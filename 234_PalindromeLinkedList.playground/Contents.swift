// Given a singly linked list, determine if it is a palindrome.

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func isPalindrome(_ head: ListNode?) -> Bool {
    guard var head = head else { return true }
    var nodes: [Int] = [head.val]

    while let next = head.next {
        nodes.append(next.val)
        head = next
    }
    return nodes == nodes.reversed()
}
