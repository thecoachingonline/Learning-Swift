// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct EnumsAndPatterns {
    static func main() {
        enum Direction { case north, south, east, west }
        
        let d: Direction = .east
        print(d)

        enum Barcode {
            case upc(Int, Int, Int, Int)
            case qr(String)
        }
        
        let b1 = Barcode.upc(8, 85909, 51226, 3)
        let b2 = Barcode.qr("HELLO")

        func describe(_ code: Barcode) {
            switch code {
                case .upc(let numberSystem, let manufacturer, let product, let check):
                print("UPC: \(numberSystem)-\(manufacturer)-\(product)-\(check)")
                case .qr(let text):
                print("QR: \(text)")
            }
        }
        
        describe(b1)
        describe(b2)

        enum HTTPStatus: Int { case ok = 200, notFound = 404 }
        
        let status = HTTPStatus(rawValue: 200)
        print(status == .ok)
    }
}
