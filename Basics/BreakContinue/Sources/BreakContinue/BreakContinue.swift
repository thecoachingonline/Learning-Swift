// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct BreakContinue {
    static func main() {
        for i in 1...10 {
            if i == 4 { break }
            print(i)
        }
        for i in 1...5 {
            if i % 2 == 0 { continue }
            print(i) // only odd numbers
        }
    }
}
