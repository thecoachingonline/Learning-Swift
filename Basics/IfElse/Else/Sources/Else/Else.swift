// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Else {
    static func main() {
        let hasAccess = false
        if hasAccess {
            print("Welcome")
        } else {
            print("Denied")
        }

        let age = 16
        if age >= 18 {
            print("Access granted")
        } else {
            print("Access denied")
        }
    }
}
