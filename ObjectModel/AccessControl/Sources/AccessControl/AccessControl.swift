// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct AccessControl {
    static func main() {
        public struct APIClient {
            public init() {}
            public func request() { print("Request sent") }
        }
        
        struct Repository { // internal by default
            fileprivate var cache: [String: String] = [:]
            mutating func store(key: String, value: String) { cache[key] = value }
            private mutating func reset() { cache.removeAll() }
            mutating func clear() { reset() }
        }
        
        let client = APIClient()
        client.request()
        
        var repo = Repository()
        repo.store(key: "id", value: "123")
        print("Cache count:", repo.cache.count)
        repo.clear()
        print("Cache count after clear:", repo.cache.count)

        internal struct Box { // whole type is internal
            public var value: Int // warning/error: member more visible than type
        }
    }
}
