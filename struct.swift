
class MyClass {
	var a = 1 {
		willSet {
			print("a from class is \(a) and will soon be set to \(newValue)")
		}
		didSet {
			print("a from class was \(oldValue) and is now set to \(a)")
		}
	}
	var b = 2
}

struct MyStruct {

	var a = 0 {
		willSet {
			print("a is \(a) and will soon be set to \(newValue)")
		}
		didSet {
			print("a was \(oldValue) and is now set to \(a)")
		}
	}

	let b = 42

	let c = MyClass()

	// removing mutating breaks the script
	mutating func changeAandC(to value: Int) {
		a = value
		c.a = value + 1
	}
}

// change var to let to see the program not compile
// let ms = MyStruct()
var ms = MyStruct()

let mc = MyClass()

mc.a = 100

print("a = \(ms.a)")
print("b = \(ms.b)")

ms.a = 3
print("a = \(ms.a)")

ms.changeAandC(to: 43)
print("a = \(ms.a)")


print(ms.c.a)
ms.c.a = 100
print(ms.c.a)
// doesn't work as b is a constant
// ms.b = 4
print("b = \(ms.b)")

