func bar(_ first: String = "default arg", _ second: Int = 3) {
    print(first, second)
}
func bar(_ second: String) {
    print("no arg", second)
}
bar("2") // Prints default 2