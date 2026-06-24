// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Arrays {
    static func main() {
        var numbers = [10, 20, 30]
        print(numbers[0])         // 10
        numbers.append(40)
        print(numbers.count)      // 4
        print(numbers.isEmpty)    // false

        var items = ["A", "B", "C"]
        items.insert("X", at: 1)
        print(items)
        items.remove(at: 2)
        print(items)
    }
}
