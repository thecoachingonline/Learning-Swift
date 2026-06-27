// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct TuplesAndTypeAliases {
    static func main() {
        let user: (name: String, age: Int) = ("Morgan", 30)
        print(user.name)
        print(user.age)
        
        let http: (code: Int, message: String) = (200, "OK")
        let (code, msg) = http
        print(code)
        print(msg)

        typealias JSON = [String: Any]
        typealias Completion = (Result<Void, Error>) -> Void
        
        // func parse(_ data: Data) -> JSON { return [:] }
        
        func save(completion: Completion) {
            completion(.success(()))
        }
    }
}
