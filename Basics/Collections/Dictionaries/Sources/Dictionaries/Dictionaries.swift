// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Dictionaries {
    static func main() {
        var iages: [String: Int] = ["Kai": 30]
        iages["Elisabeth"] = 25
        print(iages["Kai"] ?? 0)

        let ages = ["Kai": 30, "Elisabeth": 25]
        for k in ages.keys.sorted() {
            print("\(k): \(ages[k]!)")
        }
    }
}
