// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Extensions {
    static func main() {
        extension String {
            var isBlank: Bool { trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }
            func repeated(_ n: Int) -> String { String(repeating: self, count: n) }
        }
        
        print("  ".isBlank)    // true
        print("Hi".repeated(3)) // HiHiHi

        protocol Describable { func describe() -> String }
        
        struct User { let name: String }
        
        extension User: Describable {
            func describe() -> String { "User(\(name))" }
        }
        
        print(User(name: "Morgan").describe())

        struct Article { let title: String; let body: String }
        
        extension Article { // Formatting helpers
            var preview: String { String(body.prefix(40)) + "..." }
        }
        
        extension Article { // Networking stub
            static func fetchAll() -> [Article] { [] }
        }
    }
}
