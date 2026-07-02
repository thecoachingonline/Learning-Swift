// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Concurrency {
    static func main() {
        import Dispatch
           
        print("Start")
        let group = DispatchGroup()
        group.enter()
        DispatchQueue.global().async {
            print("Background work")
            group.leave()
        }
        group.wait()
        print("Done")

        import Dispatch2
        
        func fetchValue2() async -> Int { 7 }
        
        print("Start2")
        let sem2 = DispatchSemaphore2(value: 0)
        Task {
            let v = await fetchValue2()
            print("Got \(v)")
            sem2.signal()
        }
        sem2.wait()
        print("Done2")

        import Dispatch3
        
        func fetch3(_ id: Int) async -> Int { id * 10 }
        
        print("Start3")
        let sem3 = DispatchSemaphore3(value: 0)
        Task {
            async let a = fetch3(1)
            async let b = fetch3(2)
            let total = await (a + b)
            print("Total \(total)")
            sem3.signal()
        }
        sem3.wait()
        print("Done3")

        import Dispatch4
        
        enum FetchError4: Error { case bad }
        
        func fetch4(_ ok: Bool) async throws -> Int {
            if !ok { throw FetchError4.bad }
            return 42
        }
        
        print("Start4")
        let sem4 = DispatchSemaphore4(value: 0)
        Task {
            do {
                let v = try await fetch4(false)
                print("ok \(v)")
                } catch {
                    print("error")
                    }
                sem4.signal()
            }
            sem4.wait()
            print("Done4")
        
        import Dispatch5
        
        func square5(_ n: Int) async -> Int { n * n }
        
        print("Start5")
        let sem5 = DispatchSemaphore5(value: 0)
        Task {
            var results: [Int] = []
            await withTaskGroup(of: Int.self) { group in
            for n in [1,2,3] {
                group.addTask { await square5(n) }
            }
            for await val in group {
                results.append(val)
            }
            }
            print(results.sorted().map(String.init).joined(separator: ","))
            sem5.signal()
        }
        sem5.wait()
        print("Done5")

        import Dispatch6
        
        actor SafeCounter6 {
            private var value = 0
            func increment() { value += 1 }
            func get() -> Int { value }
        }
        
        let counter = SafeCounter6()
        print("Start6")
        let sem6 = DispatchSemaphore6(value: 0)
        Task {
            await withTaskGroup(of: Void.self) { group in
            for _ in 0..<1000 {
                group.addTask { await counter.increment() }
                }
            }
            print("Final: \(await counter.get())")
            sem6.signal()
        }
        sem6.wait()
        print("Done6")

        import Dispatch7
        
        func slowWork7() async throws {
            for i in 1...5 {
                try await Task.sleep(nanoseconds: 300_000_000) // 0.3s
                try Task.checkCancellation()
                print("Step ", i)
            }
        }
        
        let sem7 = DispatchSemaphore7(value: 0)
        let t = Task {
            do { try await slowWork7() } catch { print("Cancelled") }
            sem7.signal()
        }
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 0.7) {
            t.cancel()
        }
        
        sem7.wait()

    }
}
