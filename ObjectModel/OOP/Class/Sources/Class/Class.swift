// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Class {
    static func main() {
        struct Point { var x: Int; var y: Int }
        class Counter { var value = 0 }
        
        var p1 = Point(x: 1, y: 2), p2 = p1 // copy
        p2.x = 9 // p1.x remains 1
        print(p1.x)
        
        let c1 = Counter(), c2 = c1 // same instance
        c2.value = 7 // c1.value is 7
        print(c1.value)
    }
}
