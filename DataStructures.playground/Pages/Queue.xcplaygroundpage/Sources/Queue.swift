import Foundation

/**
 First In First Out
 */
public protocol FIFOProtocol{
	associatedtype Item
	
	mutating func enqueue(_ value:Item)
	mutating func dequeue() -> Item?
	
	var count:Int{ get }
	var isEmpty:Bool{ get }
	var peek:Item?{ get }
}

public struct Queue<T>: FIFOProtocol{
	public mutating func enqueue(_ value: T) {
		items.append(value)
	}
	
	public mutating func dequeue() -> T? {
		return items.isEmpty ? nil : items.removeFirst()
	}
	
	public var count: Int{ items.count }
	public var isEmpty:Bool{ items.isEmpty }
	public var peek:Item?{ items.first }

	public typealias Item = T
	private var items:[T] = []
	public init(){	}

}
extension Queue:CustomStringConvertible{
	public var description: String{
		let desc = "\(items.map{ "\($0)" }.reversed().joined(separator:" ⇢ "))"
		return desc == "" ? "[]" : "[\(desc)]"
	}
}

