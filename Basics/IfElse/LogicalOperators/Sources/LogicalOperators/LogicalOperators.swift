// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct LogicalOperators {
    static func main() {
        let isMember1 = true
        let hasCoupon = false
        if isMember1 || hasCoupon {
            print("Discount applied")
        }

        let isMember2 = true
        let expired = false
        if isMember2 && !expired {
            print("Active member")
        }
    }
}
