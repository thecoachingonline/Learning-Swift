// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct RealLife {
    static func main() {
        var remaining = 3
        while remaining > 0 {
            print("Remaining: \(remaining)")
            remaining -= 1
        }

        var attempts = 0
        var success = false
        while !success && attempts < 5 {
            attempts += 1
            print("Checking... #\(attempts)")
            if attempts == 3 {
                success = true
                print("Success!")
            }
        }
    }
}
