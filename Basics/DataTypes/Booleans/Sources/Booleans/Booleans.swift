// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Booleans {
    static func main() {
        let a = true, b = false
        print(a && b)
        print(a || b)
        print(!a)
        
        let c = 5, d = 3
        print(c > d)   // true
        print(c == d)  // false
        print(c != d)  // true
    }
}
