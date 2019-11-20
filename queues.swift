import Foundation

// let queue = DispatchQueue(label: "myqueue", attributes: .concurrent)
// let group = DispatchGroup()

// let size = 1024
// var array = [String](repeating: "", count: size)

// let threads = 4

// group.enter()
// // for n in 1...threads {

// // 	queue.async {

// // 		let start = size / threads * (n - 1)
// // 		let end = size / threads * (n) - 1

// // 		for i in start...end {
// // 			array[i] = "queue \(n) - value \(i)"
// // 		}

// // 		// print(array)
// // 	}

// // }

// DispatchQueue.concurrentPerform(iterations: threads) { n in

// 	let start = size / threads * (n + 1 - 1)
// 	let end = size / threads * (n + 1) - 1

// 	for i in start...end {
// 		array[i] = "queue \(n) - value \(i)"
// 		// print("queue \(n) - value \(i)")
// 	}

// }


// group.leave()

// // queue.sync() {
// print("wait")
// group.wait()
// print("go!")
// print(array)
// }

print("start")
let sem = DispatchSemaphore(value: 4)

for i in 0..<12 {
    DispatchQueue.global().async {
        sem.wait()
        sleep(2)
        print(i)
        sem.signal()
    }
}
print("end")

RunLoop.main.run()
