// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct RealLife {
    static func main() {
        let input = "hello"
        if !input.isEmpty {
            print("Input received: \(input)")
        }
        
        let enabled = true
        let userGroup = "beta"
        if enabled && userGroup == "beta" {
            print("Show feature")
        }
    }
}
