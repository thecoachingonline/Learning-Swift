// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Initializers {
    static func main() {
        struct User { var name: String; var age: Int }
        let a = User(name: "Morgan", age: 30) // memberwise
         
        struct Point {
            var x: Int, y: Int
            init(_ x: Int, _ y: Int) { self.x = x; self.y = y }
        }
        let p = Point(1, 2)
        
        print(a.name)
        print(a.age)
        print("\(p.x),\(p.y)")

        class Person {
            let name: String
            let age: Int
            init(name: String, age: Int) {
                self.name = name; self.age = age
            }
            convenience init(name: String) { self.init(name: name, age: 0) }
        }
        let p1 = Person(name: "Robin", age: 30)
        let p2 = Person(name: "Elisabeth")
        print(p1.name)
        print(p1.age)
        print(p2.name)
        print(p2.age)

        struct Email {
            let value: String
            init?(_ s: String) { if s.contains("@") { value = s } else { return nil } }
        }
        
        enum InitError: Error { case invalid }
        struct Port {
            let number: Int
            init(_ n: Int) throws {
                guard (1...65535).contains(n) else { throw InitError.invalid }
                number = n
            }
        }
        
        print(Email("a@b")?.value ?? "nil")
        print(Email("oops")?.value ?? "nil")
        
        do {
            let p = try Port(8080)
            print(p.number)
            _ = try Port(70000)
            print("ok")
        } catch {
            print("error")
        }

    }
}
