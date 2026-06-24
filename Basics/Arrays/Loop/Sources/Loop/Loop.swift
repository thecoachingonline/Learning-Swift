// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Loop {
    static func main() {
        let fruits = ["Apple", "Banana", "Cherry"]
        for fruit in fruits {
            print(fruit)
        }
        for (i, fruit) in fruits.enumerated() {
            print("\(i): \(fruit)")
        }

        // let fruits = ["Apple", "Banana", "Cherry"]
        // fruits.forEach { print($0) }
        // fruits.enumerated().forEach { print("\($0.offset): \($0.element)") }
    }
}
