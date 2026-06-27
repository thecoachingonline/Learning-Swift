// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Classes {
    static func main() {
        class Counter {
            var value = 0
            func inc() { value += 1 }
        }
        
        let c = Counter(); c.inc()
        print(c.value)
        
        class BankAccount {
            var balance: Int
            init(balance: Int) { self.balance = balance }
            func deposit(_ amount: Int) { balance += amount }
        }
        
        let acc = BankAccount(balance: 100)
        acc.deposit(25)
        print(acc.balance) // 125

    }
}
