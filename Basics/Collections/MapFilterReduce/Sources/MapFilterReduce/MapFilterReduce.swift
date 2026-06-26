// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct MapFilterReduce {
    static func main() {
        let nums = [1, 2, 3, 4]
        let doubled = nums.map { $0 * 2 }
        print(doubled)
        let evens = nums.filter { $0 % 2 == 0 }
        print(evens)
        let sum = nums.reduce(0, +)
        print(sum)

        let raw = ["1", "x", "2", "3"]
        let ints = raw.compactMap { Int($0) }   // [1, 2, 3]
        let total = ints.reduce(0, +)
        print(total)
    }
}
