// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct UnicodeAndScalars {
    static func main() {
        let e1 = "é"
        let e2 = "e\u{301}"   // e + COMBINING ACUTE ACCENT
        print(e1 == e2)
        print(e2)

        let s = "e\u{301}"
        for scalar in s.unicodeScalars {
            print(scalar.value)   // 101, 769
        }
    }
}
