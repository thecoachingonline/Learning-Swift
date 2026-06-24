// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct IndicesAndBounds {
    static func main() {
        let items = [10, 20, 30]
        print(items.startIndex)       // 0
        for i in items.indices {
            print("index: \(i), value: \(items[i])")
        }

        let items1 = [10, 20, 30]
        print(items1[0])   // OK
        // print(items1[3]) // out of bounds

        let items2 = [10, 20, 30]
        let lastIndex = items2.index(before: items2.endIndex)
        print(lastIndex)        // 2
        print(items2[lastIndex]) // 30
    }
}
