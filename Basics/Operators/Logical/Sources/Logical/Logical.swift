// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Logical {
    static func main() {
        let isOwner = true
        let isAdmin = false
        print(isOwner && isAdmin)
        print(true && true)

        let a = true
        let b = false
        print(a || b)
        print(false || false)

        let flag = false
        print(!flag)
        print(!true)
    }
}
