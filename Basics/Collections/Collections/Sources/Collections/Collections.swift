// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Collections {
    static func main() {
        var nums: [Int] = [1, 2, 3]
        nums.append(4)
        print(nums.count)    // 4
        print(nums[0])       // 1

        var ages: [String: Int] = ["Kai": 30]
        ages["Elisabeth"] = 25
        print(ages["Kai"] ?? 0)

        let letters: Set<Character> = ["a", "b", "a"]
        print(letters.contains("a"))
    }
}
