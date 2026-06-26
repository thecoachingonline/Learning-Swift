// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct NestedLoops {
    static func main() {
        for i in 1...2 {
            for j in 1...3 {
                print(i, j)
            }
        }
        for i in 1...3 {
            var row = ""
            for j in 1...3 {
                row += "\(i*j) "
            }
            print(row)
            }
    }
}
