// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct IfElse {
    static func main() {
        let score = 82
        if score >= 90 {
            print("A")
        } else if score >= 80 {
            print("B")
        } else {
            print("C or lower")
        }

        let n = 7
        if n % 2 == 0 {
            print("Even")
        } else {
            print("Odd")
        }
    }
}
