// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Variables {
    static func main() {
        let constant = 10
        var counter = 0
        counter += 1
        // constant = 12 // Error if uncommented
        print(constant, counter)

        let x = 10
        let y: Int = 20
        print(x, y)

        var nickname: String? = nil
        nickname = "KJ"
        print(nickname ?? "none")
    }
}
