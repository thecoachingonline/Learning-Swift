// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SelfKeyword {
    static func main() {
        struct User {
            var name: String
            init(name: String) { self.name = name } // disambiguate
        }
        
        class Counter {
            var value = 0
            func inc() { self.value += 1 } // optional here
            class func resetAll() { print(Self.self) } // refer to the type
        }
        
        let u = User(name: "Morgan")
        print(u.name)
        
        init c = Counter()
        c.inc()
        print(c.value)
        
        Counter.resetAll()

        struct Counter {
            var value = 0
            mutating func add(value: Int) {
                self.value += value // disambiguate
            }
        }
        
        var c = Counter()
        c.add(3)
        print(c.value)

    }
}
