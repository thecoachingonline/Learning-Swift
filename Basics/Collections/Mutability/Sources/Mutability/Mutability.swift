// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Mutability {
    static func main() {
        let fixed = [1, 2]
        print(fixed.count)
        var bag = [1, 2]
        bag.append(3)
        print(bag.count)

        var user = ["name": "Kai"]
        user["city"] = "Oslo"
        print(user.count)
    }
}
