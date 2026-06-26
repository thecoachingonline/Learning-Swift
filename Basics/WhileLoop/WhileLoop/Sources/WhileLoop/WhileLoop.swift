// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct WhileLoop {
    static func main() {
        var n = 3
        while n > 0 {
            print(n)
            n -= 1
        }
        print("Liftoff!")

        var attempts = 0
        repeat {
            attempts += 1
            print("Attempt #\(attempts)")
        } while attempts < 3
    }
}
