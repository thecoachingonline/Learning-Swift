// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Precedence {
    static func main() {
        print(2 + 3 * 4)
        print((2 + 3) * 4)
        print(true || false && false)
        print((true || false) && false)

        let a = true
        let b = false
        let c = true

        print(a || b && c)         // true (&& before ||)
        print((a || b) && c)       // true
        print(a && b || c)         // true ((a && b) || c)
    }
}
