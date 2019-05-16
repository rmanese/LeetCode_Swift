public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var l1 = l1
    var l2 = l2
    var head = ListNode(0)

    let node = head

    while (l1 != nil) || (l2 != nil) {
        if l1 == nil {
            head.next = ListNode(l2!.val)
            head = head.next!
            l2 = l2!.next
        } else if l2 == nil {
            head.next = ListNode(l1!.val)
            head = head.next!
            l1 = l1!.next
        } else if l1!.val < l2!.val {
            head.next = ListNode(l1!.val)
            head = head.next!
            l1 = l1!.next
        } else if l2!.val < l1!.val {
            head.next = ListNode(l2!.val)
            head = head.next!
            l2 = l2!.next
        } else if l1!.val == l2!.val {
            head.next = ListNode(l1!.val)
            head.next!.next = ListNode(l2!.val)
            head = head.next!.next!
            l1 = l1!.next
            l2 = l2!.next
        }
        print("count")
    }
    return node.next
}


var a = ListNode(1)
var b = ListNode(2)
var c = ListNode(3)
a.next = b
b.next = c

var d = ListNode(1)
var e = ListNode(3)
var f = ListNode(4)
d.next = e
e.next = f

var g = ListNode(1)
var h = ListNode(2)

mergeTwoLists(g, h)
