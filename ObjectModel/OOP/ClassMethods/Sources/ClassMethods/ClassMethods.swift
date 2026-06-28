// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct ClassMethods {
    static func main() {
        class Math {
            class func square(_ n: Int) -> Int { n * n } // overridable in subclasses
            static func cube(_ n: Int) -> Int { n * n * n } // not overridable
        }
        
        print(Math.square(4))
        print(Math.cube(3))

        class Base {
            class func greet() { print("Base") }
            static func ping() { print("Base ping") }
        }
        
        class Sub: Base {
            override class func greet() { print("Sub") }
            // static func cannot be overridden
        }
        
        Base.greet()
        Sub.greet()
        Base.ping()

    }
}
