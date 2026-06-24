// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct DataTypes {
    static func main() {
        let anInt = 42           // Int
        let aDouble = 3.14       // Double
        let isSwiftFun = true    // Bool
        let greeting = "Hello"    // String
        print(anInt)
        print(aDouble)
        print(isSwiftFun)
        print(greeting)

        let inferred = 10          // Int (inferred)
        let annotated: Double = 3  // Double (explicit)
        print(type(of: inferred), type(of: annotated))
    }
}
