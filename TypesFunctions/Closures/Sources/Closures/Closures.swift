// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Closures {
    static func main() {
        let nums = [3, 1, 2]
        let sorted = nums.sorted { $0 < $1 }
        let strings = sorted.map { "#\($0)" }
        print(strings) // ["#1", "#2", "#3"]

        func makeCounter() -> () -> Int {
            var n = 0
            return {
                n += 1
                return n
            }
        }
        
        let next = makeCounter()
        print(next()) // 1
        print(next()) // 2

        func repeatTimes(_ n: Int, _ work: () -> Void) {
            for _ in 0..<n { work() }
        }
        
        repeatTimes(3) {
            print("Hi")
        }
    }
}
