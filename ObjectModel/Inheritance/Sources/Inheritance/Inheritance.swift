// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Inheritance {
    static func main() {
        class Animal { func speak() { print("...") } }
        class Dog: Animal { override func speak() { print("Woof") } }
        let a = Animal(); a.speak()
        let d = Dog(); d.speak()

        // class Animal { func speak() { print("...") } }
        // class Dog: Animal {
            //override func speak() {
                //super.speak()
                //print("Woof")
            //}
        //}
        //let d = Dog()
        //d.speak()
    }
}
