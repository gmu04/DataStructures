//: [Previous](@previous)

import Foundation

var queue = Queue<Int>()
print("Queue (= Q) initialized: \(queue.description)")

example(of: "Dequeue from empty queue", isExecute: true) {
	print("dequeue: \(String(describing: queue.dequeue())), \tQ ⇢ \(queue.description)")
}
example(of: "Enqueue items onto queue", isExecute: true) {
	queue.enqueue(10)
	queue.enqueue(22)
	queue.enqueue(33)
	print("Q ⇢ \(queue)")
}
example(of: "Dequeue items from queue", isExecute: true) {
	print("dequeue: \(String(describing: queue.dequeue())), \tQ ⇢ \(queue.description)")
	print("dequeue: \(String(describing: queue.dequeue())), \tQ ⇢ \(queue.description)")
	print("dequeue: \(String(describing: queue.dequeue())), \tQ ⇢ \(queue.description)")
	print("dequeue: \(String(describing: queue.dequeue())), \t\tQ ⇢ \(queue.description)")
}

//: [Next](Playground)
