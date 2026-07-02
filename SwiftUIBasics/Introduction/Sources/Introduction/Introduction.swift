// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftCrossUI

@main
struct Introduction: App {
    var body: some Scene {
        WindowGroup("Hello Linux") {
            VStack {
                Text("สวัสดีจาก Swift บน Linux!")
                Button("คลิกที่นี่") {
                    print("ปุ่มถูกกด")
                }
            }
        }
    }
}
