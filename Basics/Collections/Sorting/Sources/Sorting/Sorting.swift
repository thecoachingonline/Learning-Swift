// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Sorting {
    static func main() {
        var nums = [3, 1, 2]
        let ascending = nums.sorted()
        print(ascending)      // [1, 2, 3]
        nums.sort(by: >)
        print(nums)           // [3, 2, 1]

        let names = ["bob", "Alice", "dave"]
        let caseInsensitive = names.sorted { $0.lowercased() < $1.lowercased() }
        print(caseInsensitive) // ["Alice", "bob", "dave"]
    }
}
