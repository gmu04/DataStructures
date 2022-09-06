//: [Previous](@previous)

import Foundation

var stack = Stack<Int>()
print("Stack (= S) initialized: \(stack.description)")

example(of: "Pop from empty stack", isExecute: true) {
	print("pop: \(String(describing: stack.pop())), \tS ⇢ \(stack.description)")
}
example(of: "Push items onto stack", isExecute: true) {
	stack.push(10)
	stack.push(22)
	stack.push(33)
	print("S ⇢ \(stack)")
}
example(of: "Pop items from stack", isExecute: true) {
	print("pop: \(String(describing: stack.pop())), \tS ⇢ \(stack.description)")
	print("pop: \(String(describing: stack.pop())), \tS ⇢ \(stack.description)")
	print("pop: \(String(describing: stack.pop())), \tS ⇢ \(stack.description)")
	print("pop: \(String(describing: stack.pop())), \t\t\tS ⇢ \(stack.description)")
}

//: [Next](@next)
