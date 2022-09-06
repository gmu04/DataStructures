//: [Previous](@previous)

import SwiftUI;import PlaygroundSupport;
//defer{ PlaygroundPage.current.finishExecution() }
//var n1 = Node(1);var n2 = Node(2);var n3 = Node(3);n1.next = n2;n2.next = n3;print(n1)

example(of:"LinkedList - push", isExecute:false){
	var linkedList = LinkedList<Int>()
	linkedList.push(2)
	linkedList.push(3)
	linkedList.push(22)
	print(linkedList)
}

example(of:"LinkedList - pop", isExecute:true){
	var linkedList = LinkedList<Int>()
	linkedList.push(12)
	linkedList.push(23)
	linkedList.push(42)
	print(linkedList, "\n")
	if let value = linkedList.pop(){ print("Poped: \(value)"); print(linkedList,"\n") }
	if let value = linkedList.pop(){ print("Poped: \(value)"); print(linkedList,"\n") }
	if let value = linkedList.pop(){ print("Poped: \(value)"); print(linkedList,"\n") }
	
	if let value = linkedList.pop(){ print("Poped: \(value)") }
	else{ print(linkedList) }
}

example(of:"LinkedList - append", isExecute:false){
	var linkedList = LinkedList<Int>()
	
	linkedList.append(12)
	print(linkedList, "\n")
	
	linkedList.push(42)
	print(linkedList, "\n")
	
	linkedList.append(10)
	print(linkedList, "\n")
}

example(of:"LinkedList - node:at", isExecute:false){
	var linkedList = LinkedList<Int>()
	linkedList.push(12)
	linkedList.push(42)
	print(linkedList, "\n")
	
	if let node = linkedList[0]{ print(node) }else{ print("⊚") }
	if let node = linkedList[1]{ print(node) }else{ print("⊚") }
	if let node = linkedList[2]{ print(node) }else{ print("⊚") }
	
}

example(of:"LinkedList - insert", isExecute:false){
	var linkedList = LinkedList<Int>()
	linkedList.push(12)
	linkedList.push(42)
	print(linkedList, "\n")
	
	if let node = linkedList[0]{	//.node(at:0){
		linkedList.insert(43, after: node)
		print(linkedList, "\n")
	}
	
	if let node = linkedList[2]{	//.node(at:2){
		linkedList.insert(13, after: node)
		print(linkedList, "\n")
	}
	
}

example(of:"LinkedList - remove last", isExecute:false){
	var linkedList = LinkedList<Int>()
	linkedList.push(2)
	linkedList.push(3)
	linkedList.push(22)
	print(linkedList)
	
	if let val = linkedList.removeLast(){
		print("Removed last: \(val)")
		print(linkedList)
	}
	if let val = linkedList.removeLast(){
		print("Removed last: \(val)")
		print(linkedList)
	}
	
}

example(of:"LinkedList - remove after", isExecute:false){
	var linkedList = LinkedList<Int>()
	linkedList.push(2)
	linkedList.push(3)
	linkedList.push(22)
	print(linkedList)
	
	if let node = linkedList[0]{
		linkedList.removeAfter(node)
		print(linkedList)
	}
	if let node = linkedList[1]{
		linkedList.removeAfter(node)
		print(linkedList)
	}
	if let node = linkedList[0]{
		linkedList.removeAfter(node)
		print(linkedList)
	}
}

//: [Next](@next)
