

for n in 1...100 {
	if n % 3 == 0 && n % 5 == 0 {
		print("\(n) - Fizz Buzz")
	}
	else if n % 3 == 0 {
		print("\(n) - Fizz")
	}
	else if n % 5 == 0 {
		print("\(n) - Buzz")
	}
	else {
		print(n)
	}
}

let a = [1, 2, 3, 4]

print(a.first)

print(a.firstIndex(of: 3))
