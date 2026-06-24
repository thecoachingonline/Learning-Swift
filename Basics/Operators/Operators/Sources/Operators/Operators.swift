// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Operators {
    static func main() {
        let a = 5, b = 2
    // Arithmetic
        print(a + b)
    // Comparison
        print(a > b)
    // Logical
        let t = true, f = false
        print(t && !f)

        let flag = false
        print(!flag)              // unary NOT
        let score = 85
        let label = (score >= 90) ? "A" : "Not A"
        print(label)
    }
}
