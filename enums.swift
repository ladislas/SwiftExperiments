
class priority {
	static let high = 10
	 let medium = 5
	 static let low = 0
}

print(priority.high)

class mypriority: priority {

	 let superHigh = 100
	override static let low = 111

}

print(mypriority.low)