// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Repeat {
    static func main() {
        var attempts = 0
        repeat {
            attempts += 1
            print("Attempt #\(attempts)")
        } while attempts < 3
        
        let n = 0
        repeat {
            print("Runs once")
        } while n > 0
    }
}
