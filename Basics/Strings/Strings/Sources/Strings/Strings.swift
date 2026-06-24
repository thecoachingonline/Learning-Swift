// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Strings {
    static func main() {
        let s1 = "Hello"
        let s2 = "Swift"
        print(s1 + " " + s2)
        print("\(s1), \(s2)!")
        let word = "Swift"
        print(word.count)
        print(s1.isEmpty)

        let text = "Swift"
        let start = text.startIndex
        let end = text.index(start, offsetBy: 3)
        let sub = text[start..<end]  // "Swi"
        print(sub)
        print(text.uppercased())
    }
}
