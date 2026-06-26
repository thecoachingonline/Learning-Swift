// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Switch {
    static func main() {
        let grade = 82
        switch grade {
            case 90...100:
                print("A")
            case 80..<90:
                print("B")
            case 70..<80:
                print("C")
            default:
                print("Below C")
            }

        let command = "start"
        switch command {
            case "start":
                print("Starting")
            case "stop":
                print("Stopping")
            default:
                print("Unknown")
            }

    }
}
