// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Protocols {
    static func main() {
        protocol Greetable { func greet() -> String }
        
        struct Person: Greetable {
            var name: String
            func greet() -> String { "Hello, \(name)" }
        }
        
        let p = Person(name: "Swift")
        print(p.greet())

        protocol Describable { func describe() -> String }
        
        extension Describable {
            func describe() -> String { "(no description)" }
        }
        
        struct User: Describable { let name: String }
        
        struct Car: Describable {
            let model: String
            func describe() -> String { "Car: \(model)" }
        }
        
        let u = User(name: "Morgan")
        let c = Car(model: "SwiftMobile")
        print(u.describe())
        print(c.describe())

        protocol Container {
            associatedtype Element
            mutating func append(_ item: Element)
            var count: Int { get }
            subscript(i: Int) -> Element { get }
        }
        
        struct IntStack: Container {
            private var items: [Int] = []
            mutating func append(_ item: Int) { items.append(item) }
            var count: Int { items.count }
            subscript(i: Int) -> Int { items[i] }
        }
        
        func allItemsMatch<C1: Container, C2: Container>(_ c1: C1, _ c2: C2) -> Bool
        where C1.Element == C2.Element, C1.Element: Equatable {
            guard c1.count == c2.count else { return false }
            for i in 0..<c1.count { if c1[i] != c2[i] { return false } }
            return true
        }
    }
}
