// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct ClassProperties {
    static func main() {
        class User {
            var name: String // stored
            var greeting: String { "Hello, \(name)" } // computed
            static let appName = "MyApp" // type property
            init(name: String) { self.name = name }
        }
        
        let u = User(name: "Morgan")
        print(u.greeting)
        print(User.appName)

        class Player {
            var score: Int = 0 {
                willSet { print("About to set to \(newValue)") }
                didSet { print("Changed from \(oldValue) to \(score)") }
            }
        }
        
        let p = Player()
        p.score = 10

    }
}
