struct function_t {
	let type: String?
	let action: Any?

	init(type: String, action: Any?) {
		self.type = type
		self.action = action
	}
}


func action1() {
	print("action1")
}

func action2(arg: Any?) {
	print("action2 - \(arg)")
}

func action3(args: Any...) {
	for arg in args {
		print("action3 - \(arg)")
	}
}


let f1 = function_t(type: "no", action: action1)
let f2 = function_t(type: "one", action: action2)
let f3 = function_t(type: "multi", action: action3)

func trigger(_ function: function, params: Any...) {

	if function.type == "no" {
		print("no param func")
		if let action = function.action as? () -> () {
			action()
		}
	}
	else if function.type == "one" {
		print("one param func")
		if let action = function.action as? (Any?) -> () {
			action(params)
		}
	}
	else if function.type == "multi" {
		print("multi param func")
		if let action = function.action as? (Any...) -> () {
			action(params)
		}
	}

}

print("NO PARAM\n")
trigger(f1)
trigger(f2)
trigger(f3)

print("\nONE PARAM\n")
trigger(f1, params: "Hello")
trigger(f2, params: "Hello")
trigger(f3, params: "Hello")

print("\nMULTI PARAM\n")
trigger(f1, params: "Hello", "papa")
trigger(f2, params: "Hello", "papa")
trigger(f3, params: "Hello", "papa")
