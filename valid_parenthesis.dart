//https://leetcode.com/problems/valid-parentheses

// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

// An input string is valid if:

// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.
// Every close bracket has a corresponding open bracket of the same type.

// Example 1:

// Input: s = "()"

// Output: true

// Example 2:

// Input: s = "()[]{}"

// Output: true

// Example 3:

// Input: s = "(]"

// Output: false

// Example 4:

// Input: s = "([])"

// Output: true

class Solution {
  bool isValid(String s) {
    List<String> s1 = s.split('');
    Stack<String> st = Stack<String>();
    for (int i = 0; i < s1.length; i++) {
      if (s1[i] == '(' || s1[i] == '[' || s1[i] == '{') {
        st.push(s1[i]);
      } else if (s1[i] == ')' || s1[i] == ']' || s1[i] == '}') {
        if (st.isEmpty) return false;
        String top = st.pop();
        if ((top == '(' && s1[i] != ')') ||
            (top == '[' && s1[i] != ']') ||
            (top == '{' && s1[i] != '}')) {
          return false;
        }
      }
    }
    return st.isEmpty;
  }
}

class Stack<T> {
  List<T> _stack = [];

  void push(T element) {
    _stack.add(element);
  }

  T pop() {
    if (_stack.isEmpty) {
      throw StateError('No elements');
    }
    return _stack.removeLast();
  }

  T peek() {
    if (_stack.isEmpty) {
      throw StateError('No elements');
    }
    return _stack.last;
  }

  bool get isEmpty => _stack.isEmpty;
}


