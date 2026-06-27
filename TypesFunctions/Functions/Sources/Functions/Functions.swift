// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Functions {
    static func main() {
        func greet(name: String) -> String {
            return "Hello, \(name)!"
        }
        print(greet(name: "Swift"))

        func add(_ a: Int, _ b: Int) -> Int { a + b }
        print(add(2, 3))

        func increment(_ value: inout Int, by step: Int = 1) {
            value += step
        }
        var x = 10
        increment(&x)
        print(x) // 11
        
        func sum(_ nums: Int...) -> Int { nums.reduce(0, +) }
        print(sum(1,2,3))
    }
}
