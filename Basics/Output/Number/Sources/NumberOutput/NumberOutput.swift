// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct NumberOutput {
    static func main() {
        let a = 7, b = 3
        print(a, b)                 // space-separated by default
        print("a=\(a), b=\(b)")     // interpolation
        print("sum = \(a + b)")     // inline math

        let x = -7
        print(abs(x))          // 7
        print(min(3, 8))       // 3
        print(max(3, 8))       // 8
    }
}
