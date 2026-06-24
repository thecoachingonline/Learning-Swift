// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Slices {
    static func main() {
        let nums = [10, 20, 30, 40, 50]
        let middle = nums[1...3]          // ArraySlice<Int>
        print(middle)                     // [20, 30, 40]
        let copy = Array(middle)          // Array<Int>
        print(copy)

        let numsb = [10, 20, 30, 40, 50]
        let slice = numsb[1..<3]   // indices 1 and 2
        print(slice)               // [20, 30]

        let arr = [0, 1, 2, 3, 4]
        print(arr[...2])  // first three elements (0...2)
        print(arr[2...])  // from index 2 to the end
    }
}
