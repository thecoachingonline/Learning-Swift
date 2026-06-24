// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Concatenation {
    static func main() {
        let first = "Hello"
        let second = "Swift"
    // Concatenation
        print(first + " " + second)
    // Interpolation
        print("\(first), \(second)!")

        var s = "Hello"
        s += ", Swift"
        print(s)
    }
}
