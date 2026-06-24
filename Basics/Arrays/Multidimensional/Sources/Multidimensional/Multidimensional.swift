// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Multidimensional {
    static func main() {
        var grid = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]
        ]
            print(grid[0][1]) // 2
        for row in grid {
            print(row)
        }

        grid[1][1] = 99
        print(grid[1])      // [4, 99, 6]
        print(grid[1][1])   // 99

    }
}
