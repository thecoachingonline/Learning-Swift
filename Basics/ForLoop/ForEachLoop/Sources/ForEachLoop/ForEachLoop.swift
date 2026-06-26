// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct ForEachLoop {
    static func main() {
        ["A","B","C"].forEach { print($0) }
        let items = ["A","B","C"]
        items.enumerated().forEach { print("\($0.offset): \($0.element)") }
    }
}
