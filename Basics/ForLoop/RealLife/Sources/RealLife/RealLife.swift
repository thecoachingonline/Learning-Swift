// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct RealLife {
    static func main() {
        let numbers = [1,2,3,4,5]
        var sum = 0
        for n in numbers { sum += n }
        print(sum)

        // let numbers = [1,2,3,4,5]
        let evens = numbers.filter { $0 % 2 == 0 }
        print(evens)
    }
}
