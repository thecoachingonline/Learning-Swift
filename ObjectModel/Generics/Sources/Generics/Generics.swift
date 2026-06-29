// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Generics {
    static func main() {
        func swapTwo<T>(_ a: inout T, _ b: inout T) {
            let tmp = a
            a = b
            b = tmp
        }
        
        var x = 1, y = 2
        swapTwo(&x, &y)
        print(x)
        print(y)

        func minValue<T: Comparable>(_ a: T, _ b: T) -> T { a < b ? a : b }
        
        print(minValue(3, 7))        // 3
        print(minValue("b", "a"))  // a
    }
}
