import Foundation

public func example(of title:String = "", isExecute:Bool = true, execute: ()->()){
	if isExecute{
		print("~~~~~ \(title) ~~~~~")
		execute()
		print()
	}
}
