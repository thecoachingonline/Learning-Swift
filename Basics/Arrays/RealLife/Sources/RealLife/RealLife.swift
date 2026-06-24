// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct RealLife {
    static func main() {
        let scores = [72, 88, 95, 64, 83]
        let passed = scores.filter { $0 >= 75 }
        let curved = passed.map { $0 + 5 }
        let average = curved.reduce(0, +) / curved.count
        print(passed)
        print(curved)
        print("Average: \(average)")

        let names = ["Kai", "Bjorn", "Stale"]
        print(names.contains("Bjorn"))            // true
        if let i = names.firstIndex(of: "Stale") {
            print(i)                                 // 2
        }
    }
}
