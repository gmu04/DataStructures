import Foundation

public struct LinkedList<T>{
	
	public var head:Node<T>?
	public var tail:Node<T>?
	
	public init(){ }
		
	public var isEmpty:Bool { head == nil }
}

extension LinkedList: CustomStringConvertible{
	public var description: String {
		isEmpty ? "Empty list" : String(describing: head!)
	}
}

//MARK: -
extension LinkedList{
	
	public mutating func push(_ value:T){
		self.head = Node(value, next: head)
		if tail == nil{
			self.tail = head
		}
	}
	
	
	public mutating func pop() -> T?{
		guard !isEmpty else { return nil }
		defer{
			head = head!.next
			if isEmpty{
				tail = nil
			}
		}
		return head!.value
	}
	
	
	public subscript(index:UInt) -> Node<T>?{
		var currentNode = head
		var currentIndex = 0
		
		while (currentNode != nil && currentIndex < index){
			currentNode = currentNode?.next
			currentIndex += 1
		}
		return currentNode
	}
	
	public mutating func append(_ value:T){
		guard !isEmpty else{ push(value); return }
		
		let newTail = Node(value)
		tail!.next = newTail
		tail = newTail
	}
	
		
	public mutating func insert(_ value:T, after node:Node<T>){
		node.next = Node(value, next: node.next)
	}
	

	public mutating func removeLast() -> T?{
		guard !isEmpty else{ return nil }
		guard head?.next != nil else{
			return pop()
		}
		
		var previousNode = head
		var currentNode = head
		
		while let next = currentNode?.next{
			previousNode = currentNode
			currentNode = next
		}
		
		previousNode?.next = nil
		tail = previousNode
		return currentNode?.value
	}
	
	
	public mutating func removeAfter(_ node:Node<T>) -> T?{
		defer{
			if node.next === tail{
				tail = node.next
			}
			node.next = node.next?.next
		}
		return node.next?.value	}
}
