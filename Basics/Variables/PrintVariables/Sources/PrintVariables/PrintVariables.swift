// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct PrintVariables {
    static func main() {
        let first = "Hello"
        let second = "Swift"
        // Concatenation
        print(first + ", " + second)
        // Interpolation
        print("\(first), \(second)")
        
        let a = 2, b = 3
        print("a = \(a), b = \(b), sum = \(a + b)")

        let c = 1, d = 2, e = 3
        print(c, d, e, separator: ", ", terminator: "; ")
        print("done")  // prints on the same line after a semicolon
    }
}
