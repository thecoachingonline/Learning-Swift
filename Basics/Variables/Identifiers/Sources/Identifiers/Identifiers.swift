// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Identifiers {
    static func main() {
        let name = "Swift"
        let π = 3.14
        let _hidden = true
        print(name)
        print(π)
        print(_hidden)

        let `switch` = "ok"   // escape a keyword using backticks
        let 🐶 = "dog"          // Unicode identifier
        print(`switch`, 🐶)
    }
}
