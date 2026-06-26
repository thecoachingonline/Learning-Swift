// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct CollectionProtocols {
    static func main() {
        let arr = [1, 2, 3]
        print(arr.count)
        print(arr.isEmpty)
        let s: Set<Int> = [1, 2, 3]
        print(s.contains(2))
        print(s.isEmpty)

        let arrs = [10, 20, 30]
        for i in arrs.indices {
            print("index: \(i), value: \(arrs[i])")
        }
    }
}
