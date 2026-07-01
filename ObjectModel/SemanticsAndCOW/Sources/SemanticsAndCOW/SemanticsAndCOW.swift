// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SemanticsAndCOW {
    static func main() {
        let a = [1,2,3]
        var b = a // shares storage
        b.append(4) // triggers copy for b only
        print(a) // [1,2,3]
        print(b) // [1,2,3,4]
    }
}
