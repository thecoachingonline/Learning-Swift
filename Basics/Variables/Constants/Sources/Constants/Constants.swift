// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Constants {
    static func main() {
        let pi = 3.14159
        let maxCount = 100
        // pi = 4.0 // Error: cannot assign to value: 'pi' is a 'let' constant
        print(pi,maxCount)

        var nums = [1, 2]
        nums.append(3)       // OK: nums is var
        print(nums)
        
        let fixed = [1, 2]
        // fixed.append(3)  // Error if uncommented: cannot use mutating member on immutable value
        print(fixed)
    }
}
