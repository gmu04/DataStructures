import Foundation

/**
 Last In First Out
 */
public protocol LIFOProtocol{
	associatedtype Item
	
	mutating func push(_ value:Item)
	mutating func pop() -> Item?
	
	var count:Int{ get }
}

public struct Stack<T>: LIFOProtocol{
	public mutating func push(_ value: T) {
		items.append(value)
	}
	
	public mutating func pop() -> T? {
		return items.isEmpty ? nil : items.removeLast()
	}
	
	public var count: Int{ items.count }
	
	public typealias Item = T
	private var items:[T] = []
	
	public init(){	}
}
extension Stack:CustomStringConvertible{
	public var description: String{
		let desc = "\(items.map{ "\($0)" }.reversed().joined(separator:" ⇢ "))"
		return desc == "" ? "[]" : "[\(desc)]"
	}
}
