// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Nested {
    static func main() {
        let isLoggedIn = true
        let isAdmin = false
        if isLoggedIn {
            if isAdmin {
                print("Admin panel")
            } else {
                print("Limited access")
            }
        }

        let score = 85
        if score >= 0 && score <= 100 {
            if score >= 90 {
                print("A")
            } else if score >= 80 {
                print("B")
            } else if score >= 70 {
                print("C")
            } else {
                print("Below C")
            }
        } else {
            print("Invalid score")
        }
  }
}
