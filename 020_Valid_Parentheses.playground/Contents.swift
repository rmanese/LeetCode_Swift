// 20. Valid Parentheses

//Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//An input string is valid if:
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.

func isValidParentheses(_ s: String) -> Bool {
    guard s.count > 1 else { return false }
    var stack: [Character] = []
    var dict: [Character: Character] = [")": "(", "}": "{", "]": "["]
    for char in s {
        switch char {
        case "(", "{", "[":
            stack.append(char)
        default:
            guard !stack.isEmpty else { return false }
            if let last = stack.last {
                if dict[char] == last {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
    }
    return stack.isEmpty
}


isValidParentheses("{}[]()") == true
isValidParentheses("{}") == true
isValidParentheses("{") == false
isValidParentheses("}") == false
isValidParentheses("[])") == false
