// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Optionals {
    static func main() {
        var nickname: String? = nil
        print(nickname ?? "(none)")
        
        nickname = "Ace"
        if let name = nickname {
            print(name)
        }

        func greet(_ input: String?) {
            guard let name = input else {
                print("Missing name")
                return
            }
            print("Hello, \(name)")
            }
            
            greet(nil)
            greet("Swift")

    }
}
