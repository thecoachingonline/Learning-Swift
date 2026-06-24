// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Numbers {
    static func main() {
        let age = 5
        print("Age: \(age)")          // interpolation
        let text = "You are " + String(age)
        print(text)
        let pi = 3.14
        print("pi = \(pi)")

        let s1 = "123"
        let n1 = Int(s1)           // Int?
        print(n1 ?? 0)
        
        let s2 = "abc"
        let n2 = Int(s2)           // nil (not a number)
        print(n2 == nil)
    }
}
