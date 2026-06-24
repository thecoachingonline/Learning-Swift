// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct TypeCasting {
    static func main() {
        let items: [Any] = [1, "Swift"]
        for item in items {
            if let i = item as? Int {
                print("Int: \(i)")
              } else if let s = item as? String {
                print("String: \(s)")
            }
        }
        let value: Any = 42
        let i = value as! Int   // forced downcast
        print(i)
    }
}
