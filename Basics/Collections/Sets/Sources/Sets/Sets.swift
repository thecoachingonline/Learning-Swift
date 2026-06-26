// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Sets {
    static func main() {
        let letters: Set<Character> = ["a", "b", "a"]
        print(letters.contains("a"))

        let a: Set<Int> = [1, 2, 3]
        let b: Set<Int> = [3, 4]
        print(a.union(b).sorted())         // [1, 2, 3, 4]
        print(a.intersection(b).sorted())  // [3]
        print(a.subtracting(b).sorted())   // [1, 2]
    }
}
