import Foundation

public class Node<T>{
	public var value:T
	public var next:Node?
	
	public init(_ value:T, next:Node? = nil){
		self.value = value
		self.next = next
	}
}

extension Node:CustomStringConvertible{
	public var description: String{
		"\(value) ⇢ \(next == nil ? "⊚" : String(describing: next!))"
	}
}
