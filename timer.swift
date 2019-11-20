import Foundation

func doSomething() {
	print("starting to do something")
	DispatchQueue.global(qos: .userInitiated).asyncAfter(deadline: .now() + .seconds(3), execute: {
		print("exec cancelled")
		return
	})
	sleep(5)
	print("end of function")
}

doSomething()
