// The Swift Programming Language
// https://docs.swift.org/swift-book
import ArgumentParser

@main
struct PackageManager: ParsableCommand {
  @Option(name: .shortAndLong, help: "Name to greet")
  var name: String = "Swift"

  mutating func run() throws {
    print("Hello, \(name)!")
  }
}