// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Comparison {
    static func main() {
        let a = 5, b = 2
        print(a == b)
        print(a != b)
        print(a > b)
        print(a < b)
        print(a >= 5)

        print("apple" < "banana")  // true
        print("Swift" == "Swift")  // true
        print("cat" > "car")       // true
    }
}
