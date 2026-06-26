// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct ForLoop {
    static func main() {
        for i in 1...3 {
            print(i)
        }
        let nums = [10, 20, 30]
        for n in nums {
            print(n)
        }
        for (index, value) in nums.enumerated() {
            print("index: \(index), value: \(value)")
        }
    }
}
