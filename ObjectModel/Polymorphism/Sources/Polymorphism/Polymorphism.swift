// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Polymorphism {
    static func main() {
        class Animal { func speak() { print("...") } }
        class Dog: Animal { override func speak() { print("Woof") } }
        class Cat: Animal { override func speak() { print("Meow") } }
        
        let animals: [Animal] = [Dog(), Cat()]
        animals.forEach { $0.speak() }

        protocol Speaker { func speak() }
        struct Dog1: Speaker { func speak() { print("Woof") } }
        struct Cat1: Speaker { func speak() { print("Meow") } }
        
        let speakers: [Speaker] = [Dog1(), Cat1()]
        speakers.forEach { $0.speak() }
    }
}
