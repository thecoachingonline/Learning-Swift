// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Intro {
    static func main() {
        struct Point { var x: Int; var y: Int }
        let p1 = Point(x: 1, y: 2)
        var p2 = p1      // copy
        p2.x = 10
        print(p1.x)      // 1
        print(p2.x)      // 10
         
        class Counter { var value = 0 }
        let c1 = Counter()
        let c2 = c1      // reference
        c2.value = 5
        print(c1.value)  // 5

    }
}
