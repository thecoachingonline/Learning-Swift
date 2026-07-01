// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct ErrorHandling {
    static func main() {
        enum InputError: Error { case negative }
        
        func validate(_ n: Int) throws -> String {
            if n < 0 { throw InputError.negative }
            return "ok: \(n)"
        }
        
        do {
            let result = try validate(-1)
            print(result)
        } catch {
            print("error")
        }
        
        let maybe = try? validate(1)
        print(maybe ?? "nil")

        // enum FileError: Error { case fail }
        
        func work(_ ok: Bool) throws {
            print("start")
            defer { print("cleanup") }
            // if !ok { throw FileError.fail }
            print("done")
        }
        
        do { try work(false) } catch { print("error") }

    }
}
