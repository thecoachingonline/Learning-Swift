// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Characters {
    static func main() {
        let ch: Character = "A"
        print(ch)
        let word = "Swift"
        print(word.count)

        // let ch: Character = "A"
        let s = String(ch)
        print(s)              // "A"

        let heart: Character = "❤️"
        print(heart)
        let flag: Character = "🇹🇭" // composed of two regional indicators
        print(flag)
        print("e\u{301}".count) // 1 (e + combining acute accent)
    }
}
