// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Numbers {
    static func main() {
        let a = 5, b = 2
        print(a - b)
        print(a * b)
        print(Double(a) / Double(b))

        let c = 7, d = 3
        print(c / d)  // 2 (integer division)
        print(c % d)  // 1 (remainder)
    }
}
