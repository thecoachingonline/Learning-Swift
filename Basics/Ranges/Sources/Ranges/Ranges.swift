// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Ranges {
    static func main() {
        for n in 1...5 {
            print(n)
        } 
        for n in 1..<5 {
            print(n)
        }
        let r = 10...12
        print(r.contains(11))
        print(r.contains(13))

        let arr = [0, 1, 2, 3, 4]
        print(arr[...2])  // first three elements (indices 0...2)
        print(arr[2...])  // from index 2 to the end
    }
}
