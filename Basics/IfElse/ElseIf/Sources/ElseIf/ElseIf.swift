// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct ElseIf {
    static func main() {
        let score = 72
        if score >= 90 {
            print("A")
        } else if score >= 80 {
            print("B")
        } else if score >= 70 {
            print("C")
        } else {
            print("Below C")
        }

        let t = 0
        if t <= 0 {
            print("Freezing")
        } else if t < 10 {
            print("Cold")
        } else if t < 20 {
            print("Cool")
        } else {
            print("Warm")
        }
    }
}
