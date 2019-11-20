import Foundation

let file = "file.txt"
let fileManager = FileManager.default

let path = fileManager.currentDirectoryPath + "/" + file
print(path)

let fd = open(file, O_RDWR)

print("fd: \(fd)")
var b = 42

let bw = write(fd, &b, 1)

print("bw: \(bw)")


// let url = fileURL(withPath: file)
var bytes = [UInt8]()
let url = URL(fileURLWithPath: path)
let data = try Data(contentsOf: url)
var buffer = [UInt8](repeating: 0, count: data.count)
data.copyBytes(to: &buffer, count: data.count)
bytes = buffer
print(bytes)
// print(s)
// do {
// 	let text2 = try String(contentsOf: url, encoding: .utf8)
// 	print(text2)
// }
// catch {
// 	print(error)
// }

