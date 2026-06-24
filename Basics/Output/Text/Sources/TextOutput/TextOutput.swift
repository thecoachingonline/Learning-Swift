// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct TextOutput {
    static func main() {
        print("Hello, Swift!")
        let name = "Kai"
        print("Hello, \(name)!")
        
        let a = 2, b = 3
        print("Total: \(a + b)")

        for n in 1...3 {
            print(n, terminator: " ") // prints on one line
        }
    }
}
