// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Structs {
    static func main() {
        struct Point { var x: Int; var y: Int }
        let p1 = Point(x: 1, y: 2)
        var p2 = p1 // copy
        p2.x = 10
        print(p1.x)
        print(p2.x)
    }
}
