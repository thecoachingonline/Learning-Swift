// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct ShortHand {
    static func main() {
        let age = 20
        let status = (age >= 18) ? "Adult" : "Minor"
        print(status)

        let a = 5, b = 9
        let min = (a < b) ? a : b
        print(min)
    }
}
