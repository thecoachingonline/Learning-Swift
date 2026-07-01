// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Deinitializers {
    static func main() {
           class FileHandle {
            init() { print("open") }
            deinit { print("close") }
            }
            
            var h: FileHandle? = FileHandle()
            h = nil // prints "close"
  
    }
}
